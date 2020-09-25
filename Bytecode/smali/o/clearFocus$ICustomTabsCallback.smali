.class public final Lo/clearFocus$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:[Z

.field public ICustomTabsCallback$Stub:Lo/preload;

.field public ICustomTabsCallback$Stub$Proxy:I

.field public ICustomTabsService:I

.field public asBinder:Lo/preload;

.field public asInterface:Lo/preload;

.field public extraCallback:Lo/setSearchableInfo;

.field public extraCommand:I

.field public getInterfaceDescriptor:I

.field public newSession:I

.field public onMessageChannelReady:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

.field public onNavigationEvent:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

.field public onPostMessage:Lo/requestFocus;

.field public onRelationshipValidationResult:Lo/preload;

.field public onTransact:I

.field public warmup:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lo/clearFocus$ICustomTabsCallback;->onPostMessage:Lo/requestFocus;

    .line 45
    iput-object v0, p0, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsCallback:[Z

    .line 46
    iput-object v0, p0, Lo/clearFocus$ICustomTabsCallback;->onMessageChannelReady:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 47
    iput-object v0, p0, Lo/clearFocus$ICustomTabsCallback;->onNavigationEvent:Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;

    .line 48
    iput-object v0, p0, Lo/clearFocus$ICustomTabsCallback;->asBinder:Lo/preload;

    .line 49
    iput-object v0, p0, Lo/clearFocus$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/preload;

    .line 50
    iput-object v0, p0, Lo/clearFocus$ICustomTabsCallback;->asInterface:Lo/preload;

    .line 51
    iput-object v0, p0, Lo/clearFocus$ICustomTabsCallback;->onRelationshipValidationResult:Lo/preload;

    return-void
.end method
