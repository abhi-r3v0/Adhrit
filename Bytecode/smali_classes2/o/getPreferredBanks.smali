.class public final Lo/getPreferredBanks;
.super Ljava/lang/Object;

# interfaces
.implements Lo/isDefaultApp;


# static fields
.field private static final ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/setPattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/setPattern;",
            "Lo/setCreatedAt;",
            ">;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "Lo/setCreatedAt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

.field private final arg$2:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2
    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/getPreferredBanks;->ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;

    .line 3
    new-instance v0, Lo/OrderPayment;

    invoke-direct {v0}, Lo/OrderPayment;-><init>()V

    sput-object v0, Lo/getPreferredBanks;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    .line 4
    new-instance v0, Lo/setCustomAmount;

    sget-object v1, Lo/getPreferredBanks;->extraCallback:Lo/setCustomAmount$onNavigationEvent;

    sget-object v2, Lo/getPreferredBanks;->ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "Auth.PROXY_API"

    invoke-direct {v0, v3, v1, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    sput-object v0, Lo/getPreferredBanks;->onMessageChannelReady:Lo/setCustomAmount;

    .line 5
    new-instance v0, Lo/setStartAngle;

    invoke-direct {v0}, Lo/setStartAngle;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Ljava/util/List;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getPreferredBanks;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    iput-object p2, p0, Lo/getPreferredBanks;->arg$2:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Ljava/util/List;)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/getPreferredBanks;

    invoke-direct {v0, p0, p1}, Lo/getPreferredBanks;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/getPreferredBanks;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;

    iget-object v1, p0, Lo/getPreferredBanks;->arg$2:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;->lambda$lookup$1(Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder;Ljava/util/List;Lcom/google/android/gms/tasks/Task;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
