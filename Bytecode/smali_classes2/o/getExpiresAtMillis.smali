.class final Lo/getExpiresAtMillis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getExpiresAtMillis$onPostMessage;,
        Lo/getExpiresAtMillis$onNavigationEvent;,
        Lo/getExpiresAtMillis$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

.field ICustomTabsCallback$Stub$Proxy:I

.field ICustomTabsService:Z

.field asBinder:Ljava/lang/CharSequence;

.field asInterface:Ljava/lang/String;

.field extraCallback:I

.field extraCommand:Lo/getExpiresAtMillis$onNavigationEvent;

.field getInterfaceDescriptor:Ljava/lang/String;

.field mayLaunchUrl:Ljava/lang/String;

.field newSession:Ljava/lang/String;

.field onMessageChannelReady:I

.field onNavigationEvent:I

.field onPostMessage:Ljava/lang/String;

.field onRelationshipValidationResult:Ljava/lang/String;

.field onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getExpiresAtMillis$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field postMessage:Ljava/lang/String;

.field requestPostMessageChannel:Z

.field updateVisuals:Ljava/lang/String;

.field validateRelationship:Ljava/lang/String;

.field warmup:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lo/getExpiresAtMillis;->extraCallback:I

    .line 12
    iput v0, p0, Lo/getExpiresAtMillis;->ICustomTabsCallback:I

    .line 13
    iput v0, p0, Lo/getExpiresAtMillis;->onMessageChannelReady:I

    .line 14
    iput v0, p0, Lo/getExpiresAtMillis;->onNavigationEvent:I

    const-string v0, "mp"

    .line 21
    iput-object v0, p0, Lo/getExpiresAtMillis;->asInterface:Ljava/lang/String;

    return-void
.end method
