.class public Lo/parseProcMapsJsonFromStream;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final AUTH_TOKEN_KEY:Ljava/lang/String; = "AuthToken"

.field private static final EXPIRES_IN_SECONDS_KEY:Ljava/lang/String; = "ExpiresInSecs"

.field private static final FIREBASE_INSTALLATION_ID_KEY:Ljava/lang/String; = "Fid"

.field private static final FIS_ERROR_KEY:Ljava/lang/String; = "FisError"

.field private static final PERSISTED_STATUS_KEY:Ljava/lang/String; = "Status"

.field private static final REFRESH_TOKEN_KEY:Ljava/lang/String; = "RefreshToken"

.field private static final SETTINGS_FILE_NAME_PREFIX:Ljava/lang/String; = "PersistedInstallation"

.field private static final TOKEN_CREATION_TIME_IN_SECONDS_KEY:Ljava/lang/String; = "TokenCreationEpochInSecs"


# instance fields
.field private final dataFile:Ljava/io/File;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/io/File;

    .line 84
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PersistedInstallation."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getPersistenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lo/parseProcMapsJsonFromStream;->dataFile:Ljava/io/File;

    .line 86
    iput-object p1, p0, Lo/parseProcMapsJsonFromStream;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-void
.end method

.method private readJSONFromFile()Lorg/json/JSONObject;
    .locals 6

    .line 115
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v2, v1, [B

    .line 117
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lo/parseProcMapsJsonFromStream;->dataFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x0

    .line 119
    :try_start_1
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    .line 123
    invoke-virtual {v0, v2, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 125
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 117
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 127
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clearForTesting()V
    .locals 1

    .line 176
    iget-object v0, p0, Lo/parseProcMapsJsonFromStream;->dataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public insertOrUpdatePersistedInstallationEntry(Lo/jsonFromMapEntryString;)Lo/jsonFromMapEntryString;
    .locals 4

    .line 141
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Fid"

    .line 142
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Status"

    .line 143
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getRegistrationStatus()Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "AuthToken"

    .line 144
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "RefreshToken"

    .line 145
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "TokenCreationEpochInSecs"

    .line 146
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getTokenCreationEpochInSecs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ExpiresInSecs"

    .line 147
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getExpiresInSecs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "FisError"

    .line 148
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFisError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PersistedInstallation"

    const-string v2, "tmp"

    .line 149
    iget-object v3, p0, Lo/parseProcMapsJsonFromStream;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 151
    invoke-virtual {v3}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 150
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 156
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 159
    iget-object v0, p0, Lo/parseProcMapsJsonFromStream;->dataFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to rename the tmpfile to PersistedInstallation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object p1
.end method

.method public readPersistedInstallationEntryValue()Lo/jsonFromMapEntryString;
    .locals 11

    .line 91
    invoke-direct {p0}, Lo/parseProcMapsJsonFromStream;->readJSONFromFile()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Fid"

    .line 93
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    sget-object v3, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->ATTEMPT_MIGRATION:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "Status"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "AuthToken"

    .line 95
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RefreshToken"

    .line 96
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-string v8, "TokenCreationEpochInSecs"

    .line 97
    invoke-virtual {v0, v8, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v10, "ExpiresInSecs"

    .line 98
    invoke-virtual {v0, v10, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v10, "FisError"

    .line 99
    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Lo/jsonFromMapEntryString;->builder()Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v2}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setFirebaseInstallationId(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v1

    .line 104
    invoke-static {}, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->values()[Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setRegistrationStatus(Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v4}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setAuthToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v5}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setRefreshToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v8, v9}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setTokenCreationEpochInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v6, v7}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setExpiresInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setFisError(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->build()Lo/jsonFromMapEntryString;

    move-result-object v0

    return-object v0
.end method
