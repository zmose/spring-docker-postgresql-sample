CREATE TYPE todo_status AS ENUM (
   'not_started',
   'in_progress',
   'completed'
);

CREATE TABLE todo_user (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username VARCHAR(255)
);

CREATE TABLE todo (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    user_id INTEGER,
    task VARCHAR(255),
    status todo_status,
    todo_order int,
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES todo_user(id)
);

INSERT INTO todo_user ("username") VALUES ('zmose');

INSERT INTO todo ("user_id", "task", "status", "todo_order") VALUES (1, 'mow lawn', 'not_started', 1);

-- build a client table --
--CREATE TABLE client (
--    id varchar(255) NOT NULL,
--    clientId varchar(255) NOT NULL,
--    clientIdIssuedAt timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
--    clientSecret varchar(255) DEFAULT NULL,
--    clientSecretExpiresAt timestamp DEFAULT NULL,
--    clientName varchar(255) NOT NULL,
--    clientAuthenticationMethods varchar(1000) NOT NULL,
--    authorizationGrantTypes varchar(1000) NOT NULL,
--    redirectUris varchar(1000) DEFAULT NULL,
--    postLogoutRedirectUris varchar(1000) DEFAULT NULL,
--    scopes varchar(1000) NOT NULL,
--    clientSettings varchar(2000) NOT NULL,
--    tokenSettings varchar(2000) NOT NULL,
--    PRIMARY KEY (id)
--);
--
--CREATE TABLE authorization (
--    id varchar(255) NOT NULL,
--    registeredClientId varchar(255) NOT NULL,
--    principalName varchar(255) NOT NULL,
--    authorizationGrantType varchar(255) NOT NULL,
--    authorizedScopes varchar(1000) DEFAULT NULL,
--    attributes varchar(4000) DEFAULT NULL,
--    state varchar(500) DEFAULT NULL,
--    authorizationCodeValue varchar(4000) DEFAULT NULL,
--    authorizationCodeIssuedAt timestamp DEFAULT NULL,
--    authorizationCodeExpiresAt timestamp DEFAULT NULL,
--    authorizationCodeMetadata varchar(2000) DEFAULT NULL,
--    accessTokenValue varchar(4000) DEFAULT NULL,
--    accessTokenIssuedAt timestamp DEFAULT NULL,
--    accessTokenExpiresAt timestamp DEFAULT NULL,
--    accessTokenMetadata varchar(2000) DEFAULT NULL,
--    accessTokenType varchar(255) DEFAULT NULL,
--    accessTokenScopes varchar(1000) DEFAULT NULL,
--    refreshTokenValue varchar(4000) DEFAULT NULL,
--    refreshTokenIssuedAt timestamp DEFAULT NULL,
--    refreshTokenExpiresAt timestamp DEFAULT NULL,
--    refreshTokenMetadata varchar(2000) DEFAULT NULL,
--    oidcIdTokenValue varchar(4000) DEFAULT NULL,
--    oidcIdTokenIssuedAt timestamp DEFAULT NULL,
--    oidcIdTokenExpiresAt timestamp DEFAULT NULL,
--    oidcIdTokenMetadata varchar(2000) DEFAULT NULL,
--    oidcIdTokenClaims varchar(2000) DEFAULT NULL,
--    userCodeValue varchar(4000) DEFAULT NULL,
--    userCodeIssuedAt timestamp DEFAULT NULL,
--    userCodeExpiresAt timestamp DEFAULT NULL,
--    userCodeMetadata varchar(2000) DEFAULT NULL,
--    deviceCodeValue varchar(4000) DEFAULT NULL,
--    deviceCodeIssuedAt timestamp DEFAULT NULL,
--    deviceCodeExpiresAt timestamp DEFAULT NULL,
--    deviceCodeMetadata varchar(2000) DEFAULT NULL,
--    PRIMARY KEY (id)
--);
--
--CREATE TABLE authorizationConsent (
--    registeredClientId varchar(255) NOT NULL,
--    principalName varchar(255) NOT NULL,
--    authorities varchar(1000) NOT NULL,
--    PRIMARY KEY (registeredClientId, principalName)
--);