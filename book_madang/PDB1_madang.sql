GRANT SELECT, UPDATE ON customer TO mdguest WITH GRANT OPTION;

grant select on madang.customer to mdguest2;

grant select on orders to public;

select * from madang.book;



grant select on madang.customer to mdguest2;



REVOKE SELECT ON book FROM mdguest;