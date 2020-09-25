.class final Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstrumentViewJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/InstrumentViewJsonAdapter;

.field private extraCallback:Z

.field private onMessageChannelReady:F

.field private onNavigationEvent:F

.field private onPostMessage:Z


# direct methods
.method private constructor <init>(Lo/InstrumentViewJsonAdapter;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/InstrumentViewJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/InstrumentViewJsonAdapter;Lo/InstrumentViewJsonAdapter$5;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;-><init>(Lo/InstrumentViewJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(FFZ)V
    .locals 0

    .line 223
    iput p1, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->onNavigationEvent:F

    .line 224
    iput p2, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:F

    .line 225
    iput-boolean p3, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->onPostMessage:Z

    .line 227
    iget-boolean p1, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->extraCallback:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->extraCallback:Z

    .line 229
    iget-object p1, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/InstrumentViewJsonAdapter;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->extraCallback:Z

    .line 236
    iget-object v0, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/InstrumentViewJsonAdapter;

    invoke-static {v0}, Lo/InstrumentViewJsonAdapter;->onNavigationEvent(Lo/InstrumentViewJsonAdapter;)Lo/InstrumentViewJsonAdapter$onPostMessage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Lo/InstrumentViewJsonAdapter;

    invoke-static {v0}, Lo/InstrumentViewJsonAdapter;->onNavigationEvent(Lo/InstrumentViewJsonAdapter;)Lo/InstrumentViewJsonAdapter$onPostMessage;

    move-result-object v0

    iget v1, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->onNavigationEvent:F

    iget v2, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:F

    iget-boolean v3, p0, Lo/InstrumentViewJsonAdapter$ICustomTabsCallback;->onPostMessage:Z

    invoke-interface {v0, v1, v2, v3}, Lo/InstrumentViewJsonAdapter$onPostMessage;->onPostMessage(FFZ)V

    return-void
.end method
