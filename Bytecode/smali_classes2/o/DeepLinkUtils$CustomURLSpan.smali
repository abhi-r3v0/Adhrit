.class public final Lo/DeepLinkUtils$CustomURLSpan;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getAdUnitId;


# static fields
.field private static final ICustomTabsCallback:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final extraCallback:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:Lo/MethodNotAllowedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MethodNotAllowedException<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lo/fK;

    const-string v1, "com.google.android.gms.measurement"

    .line 10
    invoke-static {v1}, Lo/PermissionNotGrantedException;->onNavigationEvent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/fK;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x1

    const-string v2, "measurement.gold.enhanced_ecommerce.format_logs"

    .line 11
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/DeepLinkUtils$CustomURLSpan;->ICustomTabsCallback:Lo/MethodNotAllowedException;

    const-string v2, "measurement.gold.enhanced_ecommerce.log_nested_complex_events"

    .line 12
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/DeepLinkUtils$CustomURLSpan;->onPostMessage:Lo/MethodNotAllowedException;

    const-string v2, "measurement.gold.enhanced_ecommerce.nested_param_daily_event_count"

    .line 13
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/DeepLinkUtils$CustomURLSpan;->onNavigationEvent:Lo/MethodNotAllowedException;

    const-string v2, "measurement.gold.enhanced_ecommerce.updated_schema.client"

    .line 14
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/DeepLinkUtils$CustomURLSpan;->extraCallback:Lo/MethodNotAllowedException;

    const-string v2, "measurement.gold.enhanced_ecommerce.updated_schema.service"

    .line 15
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v2

    sput-object v2, Lo/DeepLinkUtils$CustomURLSpan;->onMessageChannelReady:Lo/MethodNotAllowedException;

    const-string v2, "measurement.gold.enhanced_ecommerce.upload_nested_complex_events"

    .line 16
    invoke-virtual {v0, v2, v1}, Lo/fK;->extraCallback(Ljava/lang/String;Z)Lo/MethodNotAllowedException;

    move-result-object v0

    sput-object v0, Lo/DeepLinkUtils$CustomURLSpan;->onRelationshipValidationResult:Lo/MethodNotAllowedException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 5
    sget-object v0, Lo/DeepLinkUtils$CustomURLSpan;->onNavigationEvent:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 8
    sget-object v0, Lo/DeepLinkUtils$CustomURLSpan;->onRelationshipValidationResult:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 7
    sget-object v0, Lo/DeepLinkUtils$CustomURLSpan;->onMessageChannelReady:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 3
    sget-object v0, Lo/DeepLinkUtils$CustomURLSpan;->ICustomTabsCallback:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 6
    sget-object v0, Lo/DeepLinkUtils$CustomURLSpan;->extraCallback:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 4
    sget-object v0, Lo/DeepLinkUtils$CustomURLSpan;->onPostMessage:Lo/MethodNotAllowedException;

    invoke-virtual {v0}, Lo/MethodNotAllowedException;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
