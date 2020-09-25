.class public abstract Lo/getCreatedAt;
.super Lo/setPaymentDueDateWeaklyTyped;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setPaymentDueDateWeaklyTyped<",
        "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/setCode;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/setCode;",
            "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/getCreatedAt;->ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;

    .line 6
    new-instance v0, Lo/getUpdatedAt;

    invoke-direct {v0}, Lo/getUpdatedAt;-><init>()V

    sput-object v0, Lo/getCreatedAt;->onPostMessage:Lo/setCustomAmount$onNavigationEvent;

    .line 7
    new-instance v1, Lo/setCustomAmount;

    sget-object v2, Lo/getCreatedAt;->ICustomTabsCallback:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "SmsRetriever.API"

    invoke-direct {v1, v3, v0, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    sput-object v1, Lo/getCreatedAt;->onNavigationEvent:Lo/setCustomAmount;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 3
    sget-object v0, Lo/getCreatedAt;->onNavigationEvent:Lo/setCustomAmount;

    sget-object v1, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;->onPostMessage:Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lo/setPaymentDueDateWeaklyTyped;-><init>(Landroid/app/Activity;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;)V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
