.class public Lo/populateFrameData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/IdManager;


# static fields
.field private static final APP_IN_BACKGROUND_INTERRUPT_REASON:Ljava/lang/String; = "app_in_background"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final createdPersistenceCaches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/populateFrameData;->createdPersistenceCaches:Ljava/util/Set;

    .line 53
    iput-object p1, p0, Lo/populateFrameData;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/populateFrameData;->applicationContext:Landroid/content/Context;

    return-void

    :cond_0
    const-string p1, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    const-string v0, "FirebaseDatabase"

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lo/populateFrameData;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lo/populateFrameData;->applicationContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public createPersistenceManager(Lo/getNamedThreadFactory;Ljava/lang/String;)Lo/NativeSessionFileGzipper;
    .locals 3

    .line 155
    invoke-virtual {p1}, Lo/getNamedThreadFactory;->getSessionPersistenceKey()Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 159
    iget-object v1, p0, Lo/populateFrameData;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v0, p0, Lo/populateFrameData;->createdPersistenceCaches:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Lo/populateThreadsList;

    iget-object v1, p0, Lo/populateFrameData;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lo/populateThreadsList;-><init>(Landroid/content/Context;Lo/getNamedThreadFactory;Ljava/lang/String;)V

    .line 166
    new-instance p2, Lo/NativeSessionFile;

    invoke-virtual {p1}, Lo/getNamedThreadFactory;->getPersistenceCacheSizeBytes()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lo/NativeSessionFile;-><init>(J)V

    .line 167
    new-instance v1, Lo/jsonToKeysData;

    invoke-direct {v1, p1, v0, p2}, Lo/jsonToKeysData;-><init>(Lo/getNamedThreadFactory;Lo/processNativeSessions;Lo/MetaDataStore$1;)V

    return-object v1

    .line 160
    :cond_0
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "SessionPersistenceKey \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' has already been used."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lo/onUserId;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLCacheDirectory()Ljava/io/File;
    .locals 3

    .line 173
    iget-object v0, p0, Lo/populateFrameData;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sslcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent(Lo/getNamedThreadFactory;)Ljava/lang/String;
    .locals 1

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/Android"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newEventTarget(Lo/getNamedThreadFactory;)Lo/formatId;
    .locals 0

    .line 75
    new-instance p1, Lo/populateThreadData;

    invoke-direct {p1}, Lo/populateThreadData;-><init>()V

    return-object p1
.end method

.method public newLogger(Lo/getNamedThreadFactory;Lo/deleteLogFile$extraCallback;Ljava/util/List;)Lo/deleteLogFile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getNamedThreadFactory;",
            "Lo/deleteLogFile$extraCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/deleteLogFile;"
        }
    .end annotation

    .line 139
    new-instance p1, Lo/getLogAsString;

    invoke-direct {p1, p2, p3}, Lo/getLogAsString;-><init>(Lo/deleteLogFile$extraCallback;Ljava/util/List;)V

    return-object p1
.end method

.method public newPersistentConnection(Lo/getNamedThreadFactory;Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;)Lo/getDataCollectionValueFromSharedPreferences;
    .locals 0

    .line 114
    new-instance p1, Lo/logDataCollectionState;

    invoke-direct {p1, p2, p3, p4}, Lo/logDataCollectionState;-><init>(Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;)V

    .line 119
    iget-object p2, p0, Lo/populateFrameData;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    new-instance p3, Lo/populateFrameData$1;

    invoke-direct {p3, p0, p1}, Lo/populateFrameData$1;-><init>(Lo/populateFrameData;Lo/getDataCollectionValueFromSharedPreferences;)V

    invoke-virtual {p2, p3}, Lcom/google/firebase/FirebaseApp;->addBackgroundStateChangeListener(Lcom/google/firebase/FirebaseApp$extraCallback;)V

    return-object p1
.end method

.method public newRunLoop(Lo/getNamedThreadFactory;)Lo/migrateLegacyId;
    .locals 1

    const-string v0, "RunLoop"

    .line 80
    invoke-virtual {p1, v0}, Lo/getNamedThreadFactory;->getLogger(Ljava/lang/String;)Lo/FileLogStore;

    move-result-object p1

    .line 81
    new-instance v0, Lo/populateFrameData$4;

    invoke-direct {v0, p0, p1}, Lo/populateFrameData$4;-><init>(Lo/populateFrameData;Lo/FileLogStore;)V

    return-object v0
.end method
