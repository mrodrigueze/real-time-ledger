create table public.participants (
  phone_number text not null,
  full_name text not null,
  tickets_purchased integer null default 0,
  referrer_phone text null,
  created_at timestamp with time zone null default now(),
  constraint participantes_pkey primary key (phone_number),
  constraint participantes_celular_check check ((phone_number ~ '^[0-9]{9}$'::text)),
  constraint participantes_referencia_check check (
    (
      (referrer_phone ~ '^[0-9]{9}$'::text)
      or (referrer_phone is null)
    )
  )
) TABLESPACE pg_default;

create view public.recent_activity as
select
  p.phone_number,
  p.full_name,
  p.tickets_purchased,
  COALESCE(r.extra_tickets, 0) as extra_tickets,
  COALESCE(p.referrer_phone, 'None'::text) as referrer_phone
from
  participants p
  left join referral_bonus_per_client r on p.phone_number = r.phone_number
order by
  p.created_at desc
limit
  10;

create view public.referral_bonus_per_client as
select
  referrer_phone as phone_number,
  count(*)::integer as extra_tickets
from
  participants
where
  referrer_phone is not null
group by
  referrer_phone;

create view public.system_metrics as
select
  count(distinct phone_number)::integer as unique_participants,
  COALESCE(sum(tickets_purchased), 0::bigint)::integer as tickets_sold,
  COALESCE(
    (
      select
        sum(referral_bonus_per_client.extra_tickets) as sum
      from
        referral_bonus_per_client
    ),
    0::bigint
  )::integer as extra_tickets,
  (
    COALESCE(sum(tickets_purchased), 0::bigint) + COALESCE(
      (
        select
          sum(referral_bonus_per_client.extra_tickets) as sum
        from
          referral_bonus_per_client
      ),
      0::bigint
    )
  )::integer as total_tickets_issued
from
  participants;