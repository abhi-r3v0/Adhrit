.class public final Lo/getReferenceId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getReferenceId$onPostMessage;,
        Lo/getReferenceId$ICustomTabsCallback;,
        Lo/getReferenceId$onNavigationEvent;,
        Lo/getReferenceId$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub$Proxy:Lo/setCustomAmount$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onNavigationEvent<",
            "Lo/setResponseExpectationEnabled;",
            "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final warmup:Lo/setCustomAmount$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$onRelationshipValidationResult<",
            "Lo/setResponseExpectationEnabled;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback:I

.field final ICustomTabsCallback$Stub:Z

.field final ICustomTabsService:Lo/component15;

.field asBinder:I

.field final asInterface:Lo/getRefundAccount;

.field extraCallback:Ljava/lang/String;

.field getInterfaceDescriptor:Lo/getReferenceId$ICustomTabsCallback;

.field final newSession:Lo/getReferenceId$onNavigationEvent;

.field final onMessageChannelReady:Landroid/content/Context;

.field final onNavigationEvent:Ljava/lang/String;

.field onRelationshipValidationResult:Ljava/lang/String;

.field onTransact:Lo/setUserProperties$validateRelationship$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/setCustomAmount$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/setCustomAmount$onRelationshipValidationResult;-><init>()V

    sput-object v0, Lo/getReferenceId;->warmup:Lo/setCustomAmount$onRelationshipValidationResult;

    new-instance v0, Lo/getEnd_url;

    invoke-direct {v0}, Lo/getEnd_url;-><init>()V

    sput-object v0, Lo/getReferenceId;->ICustomTabsCallback$Stub$Proxy:Lo/setCustomAmount$onNavigationEvent;

    new-instance v1, Lo/setCustomAmount;

    sget-object v2, Lo/getReferenceId;->warmup:Lo/setCustomAmount$onRelationshipValidationResult;

    const-string v3, "ClearcutLogger.API"

    invoke-direct {v1, v3, v0, v2}, Lo/setCustomAmount;-><init>(Ljava/lang/String;Lo/setCustomAmount$onNavigationEvent;Lo/setCustomAmount$onRelationshipValidationResult;)V

    sput-object v1, Lo/getReferenceId;->onPostMessage:Lo/setCustomAmount;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lo/toCircleFast;->onNavigationEvent(Landroid/content/Context;)Lo/getRefundAccount;

    move-result-object v5

    .line 1001
    sget-object v6, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    new-instance v7, Lo/isGallerySelectionEnabled;

    invoke-direct {v7, p1}, Lo/isGallerySelectionEnabled;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lo/getReferenceId;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLo/getRefundAccount;Lo/component15;Lo/getReferenceId$onNavigationEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLo/getRefundAccount;Lo/component15;Lo/getReferenceId$onNavigationEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, -0x1

    iput p3, p0, Lo/getReferenceId;->asBinder:I

    sget-object v0, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onNavigationEvent:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    iput-object v0, p0, Lo/getReferenceId;->onTransact:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    iput-object p1, p0, Lo/getReferenceId;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getReferenceId;->onNavigationEvent:Ljava/lang/String;

    invoke-static {p1}, Lo/getReferenceId;->ICustomTabsCallback(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lo/getReferenceId;->ICustomTabsCallback:I

    iput p3, p0, Lo/getReferenceId;->asBinder:I

    iput-object p2, p0, Lo/getReferenceId;->extraCallback:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/getReferenceId;->onRelationshipValidationResult:Ljava/lang/String;

    iput-boolean p4, p0, Lo/getReferenceId;->ICustomTabsCallback$Stub:Z

    iput-object p5, p0, Lo/getReferenceId;->asInterface:Lo/getRefundAccount;

    iput-object p6, p0, Lo/getReferenceId;->ICustomTabsService:Lo/component15;

    new-instance p1, Lo/getReferenceId$ICustomTabsCallback;

    invoke-direct {p1}, Lo/getReferenceId$ICustomTabsCallback;-><init>()V

    iput-object p1, p0, Lo/getReferenceId;->getInterfaceDescriptor:Lo/getReferenceId$ICustomTabsCallback;

    sget-object p1, Lo/setUserProperties$validateRelationship$onMessageChannelReady;->onNavigationEvent:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    iput-object p1, p0, Lo/getReferenceId;->onTransact:Lo/setUserProperties$validateRelationship$onMessageChannelReady;

    iput-object p7, p0, Lo/getReferenceId;->newSession:Lo/getReferenceId$onNavigationEvent;

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method
