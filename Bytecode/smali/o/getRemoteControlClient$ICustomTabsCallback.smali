.class Lo/getRemoteControlClient$ICustomTabsCallback;
.super Lo/setQueue;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/setMetadata$onNavigationEvent;


# instance fields
.field extraCallback:Lo/describeContents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/describeContents<",
            "Lo/getRemoteControlClient$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Lo/getRemoteControlClient$ICustomTabsCallback$4;

    invoke-direct {v0}, Lo/getRemoteControlClient$ICustomTabsCallback$4;-><init>()V

    sput-object v0, Lo/getRemoteControlClient$ICustomTabsCallback;->onNavigationEvent:Lo/setMetadata$onNavigationEvent;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 295
    new-instance v0, Lo/describeContents;

    invoke-direct {v0}, Lo/describeContents;-><init>()V

    iput-object v0, p0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lo/getRemoteControlClient$ICustomTabsCallback;->onPostMessage:Z

    return-void
.end method

.method static onNavigationEvent(Lo/setRatingType;)Lo/getRemoteControlClient$ICustomTabsCallback;
    .locals 2

    .line 292
    new-instance v0, Lo/setMetadata;

    sget-object v1, Lo/getRemoteControlClient$ICustomTabsCallback;->onNavigationEvent:Lo/setMetadata$onNavigationEvent;

    invoke-direct {v0, p0, v1}, Lo/setMetadata;-><init>(Lo/setRatingType;Lo/setMetadata$onNavigationEvent;)V

    const-class p0, Lo/getRemoteControlClient$ICustomTabsCallback;

    invoke-virtual {v0, p0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p0

    check-cast p0, Lo/getRemoteControlClient$ICustomTabsCallback;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 4

    .line 344
    invoke-super {p0}, Lo/setQueue;->onMessageChannelReady()V

    .line 345
    iget-object v0, p0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v0}, Lo/describeContents;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 347
    iget-object v2, p0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v2, v1}, Lo/describeContents;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRemoteControlClient$onNavigationEvent;

    const/4 v3, 0x1

    .line 348
    invoke-virtual {v2, v3}, Lo/getRemoteControlClient$onNavigationEvent;->onMessageChannelReady(Z)Lo/getCurrentControllerInfo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lo/getRemoteControlClient$ICustomTabsCallback;->extraCallback:Lo/describeContents;

    invoke-virtual {v0}, Lo/describeContents;->onPostMessage()V

    return-void
.end method
