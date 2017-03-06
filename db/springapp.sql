
CREATE TABLE public.product
(
  id integer NOT NULL,
  description text,
  price real,
  CONSTRAINT springapp_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.product
  OWNER TO postgres;
