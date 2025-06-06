self: super: let
  inherit (self) lib config;
in {

    age = super.callPackage ./age.nix { };

    anonymizer = super.callPackage ./anonymizer.nix { };

    apache_datasketches = super.callPackage ./apache_datasketches.nix { };

    citus = super.callPackage ./citus.nix { };

    h3-pg = super.callPackage ./h3-pg.nix { };

    hypopg = super.callPackage ./hypopg.nix { };

    jsonb_deep_sum = super.callPackage ./jsonb_deep_sum.nix { };

    lantern = super.callPackage ./lantern.nix { };

    periods = super.callPackage ./periods.nix { };

    postgis = super.callPackage ./postgis.nix { };

    pg_auto_failover = super.callPackage ./pg_auto_failover.nix { };

    pg_byteamagic = super.callPackage ./pg_byteamagic.nix { };

    pg_bigm = super.callPackage ./pg_bigm.nix { };

    pg_ed25519 = super.callPackage ./pg_ed25519.nix { };

    pg_hint_plan = super.callPackage ./pg_hint_plan.nix { };

    pg_ivm = super.callPackage ./pg_ivm.nix { };

    pg_libversion = super.callPackage ./pg_libversion.nix { };

    pg_rational = super.callPackage ./pg_rational.nix { };

    pg_repack = super.callPackage ./pg_repack.nix { };

    pg_similarity = super.callPackage ./pg_similarity.nix { };

    pgaudit = super.callPackage ./pgaudit.nix { };

    pgmq = super.callPackage ./pgmq.nix { };

    pgroonga = super.callPackage ./pgroonga.nix { };

    pgsodium = super.callPackage ./pgsodium.nix { };

    pgsql-http = super.callPackage ./pgsql-http.nix { };

    pgvecto-rs = super.callPackage ./pgvecto-rs { };

    pgvector = super.callPackage ./pgvector.nix { };

    plpgsql_check = super.callPackage ./plpgsql_check.nix { };

    plr = super.callPackage ./plr.nix { };

    plv8 = super.callPackage ./plv8 { };

    pgjwt = super.callPackage ./pgjwt.nix { };

    cstore_fdw = super.callPackage ./cstore_fdw.nix { };

    pg_hll = super.callPackage ./pg_hll.nix { };

    pg_cron = super.callPackage ./pg_cron.nix { };

    pg_tle = super.callPackage ./pg_tle.nix { };

    pg_topn = super.callPackage ./pg_topn.nix { };

    pg_net = super.callPackage ./pg_net.nix { };

    pg-gvm = super.callPackage ./pg-gvm.nix { };

    pg-semver = super.callPackage ./pg-semver.nix { };

    pgtap = super.callPackage ./pgtap.nix { };

    smlar = super.callPackage ./smlar.nix { };

    system_stats = super.callPackage ./system_stats.nix { };

    temporal_tables = super.callPackage ./temporal_tables.nix { };

    timescaledb = super.callPackage ./timescaledb.nix { };
    timescaledb-apache = super.callPackage ./timescaledb.nix { enableUnfree = false; };

    timescaledb_toolkit = super.callPackage ./timescaledb_toolkit.nix { };

    tds_fdw = super.callPackage ./tds_fdw.nix { };

    pgrouting = super.callPackage ./pgrouting.nix { };

    pgx_ulid = super.callPackage ./pgx_ulid.nix { };

    pg_partman = super.callPackage ./pg_partman.nix { };

    pg_relusage = super.callPackage ./pg_relusage.nix { };

    pg_roaringbitmap = super.callPackage ./pg_roaringbitmap.nix { };

    pg_safeupdate = super.callPackage ./pg_safeupdate.nix { };

    pg_squeeze = super.callPackage ./pg_squeeze.nix { };

    pg_uuidv7 = super.callPackage ./pg_uuidv7.nix { };

    repmgr = super.callPackage ./repmgr.nix { };

    rum = super.callPackage ./rum.nix { };

    sqlite_fdw = super.callPackage ./sqlite_fdw.nix { };

    tsja = super.callPackage ./tsja.nix { };

    wal2json = super.callPackage ./wal2json.nix { };

    pgddl = super.callPackage ./pgddl.nix {};
} // lib.optionalAttrs config.allowAliases {
  pg_embedding = throw "PostgreSQL extension `pg_embedding` has been removed since the project has been abandoned. Upstream's recommendation is to use pgvector instead (https://neon.tech/docs/extensions/pg_embedding#migrate-from-pg_embedding-to-pgvector)";
}
