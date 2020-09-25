.class public final Lo/intent$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public ICustomTabsCallback:Z

.field public extraCallback:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:I

.field public onNavigationEvent:Z

.field onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 224
    iput v0, p0, Lo/intent$onNavigationEvent;->onMessageChannelReady:I

    .line 232
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/getScaleY;->onPostMessage(Ljava/lang/Object;)Lo/setPivotX;

    move-result-object v0

    iput-object v0, p0, Lo/intent$onNavigationEvent;->extraCallback:Lo/setPivotX;

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lo/intent$onNavigationEvent;->ICustomTabsCallback:Z

    .line 238
    iput-boolean v0, p0, Lo/intent$onNavigationEvent;->onNavigationEvent:Z

    const/16 v0, 0x14

    .line 241
    iput v0, p0, Lo/intent$onNavigationEvent;->onPostMessage:I

    return-void
.end method
