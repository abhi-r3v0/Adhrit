.class public final Lo/zzac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final onMessageChannelReady:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/ImageFragment;",
            "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/ImageFragment;",
            ">;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/zzac;->onNavigationEvent:Lo/setCustomAmount$onRelationshipValidationResult;

    new-instance v0, Lo/zzarg;

    invoke-direct {v0}, Lo/zzarg;-><init>()V

    sput-object v0, Lo/zzac;->onMessageChannelReady:Lo/setCustomAmount$onNavigationEvent;

    new-instance v0, Lo/setCustomAmount;

    sget-object v1, Lo/zzac;->onMessageChannelReady:Lo/setCustomAmount$onNavigationEvent;

    sget-object v2, Lo/zzac;->onNavigationEvent:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "LocationServices.API"

    invoke-direct {v0, v3, v1, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    sput-object v0, Lo/zzac;->onPostMessage:Lo/setCustomAmount;

    new-instance v0, Lo/VideoFragment;

    invoke-direct {v0}, Lo/VideoFragment;-><init>()V

    new-instance v0, Lo/setAuthTimeOutInterval;

    invoke-direct {v0}, Lo/setAuthTimeOutInterval;-><init>()V

    new-instance v0, Lo/setRawJsonOfUnsupportedType;

    invoke-direct {v0}, Lo/setRawJsonOfUnsupportedType;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/zzac;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    return-void
.end method

.method public static createDataSnapshot(Lo/isPresent;Lo/discardOldLogFiles;)Lo/CrashlyticsLifecycleEvents;
    .locals 1

    .line 1041
    new-instance v0, Lo/CrashlyticsLifecycleEvents;

    invoke-direct {v0, p0, p1}, Lo/CrashlyticsLifecycleEvents;-><init>(Lo/isPresent;Lo/discardOldLogFiles;)V

    return-object v0
.end method

.method public static createDatabaseForTests(Lcom/google/firebase/FirebaseApp;Lo/getOsDisplayVersionString;Lo/buildSingleThreadScheduledExecutorService;)Lo/onUserId;
    .locals 0

    .line 1047
    invoke-static {p0, p1, p2}, Lo/onUserId;->createForTests(Lcom/google/firebase/FirebaseApp;Lo/getOsDisplayVersionString;Lo/buildSingleThreadScheduledExecutorService;)Lo/onUserId;

    move-result-object p0

    return-object p0
.end method

.method public static createMutableData(Lo/LogFileManager$DirectoryProvider;)Lo/populateSessionData;
    .locals 1

    .line 1052
    new-instance v0, Lo/populateSessionData;

    invoke-direct {v0, p0}, Lo/populateSessionData;-><init>(Lo/LogFileManager$DirectoryProvider;)V

    return-object v0
.end method

.method public static createReference(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)Lo/isPresent;
    .locals 1

    .line 1036
    new-instance v0, Lo/isPresent;

    invoke-direct {v0, p0, p1}, Lo/isPresent;-><init>(Lo/getCrashlyticsInstallId;Lo/ExecutorUtils$2;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/zzac;

    invoke-direct {v0, p0}, Lo/zzac;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/zzac;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;

    invoke-static {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;->lambda$handleWatchStreamStart$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder;)V

    return-void
.end method
