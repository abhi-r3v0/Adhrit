.class public final Lo/generateDefaultLayoutParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/generateDefaultLayoutParams$onPostMessage;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Z

.field public final extraCallback:Lo/onDetachedFromWindow;

.field public final onMessageChannelReady:Lo/getTabContainer;

.field public final onPostMessage:Lo/generateDefaultLayoutParams$onPostMessage;


# direct methods
.method public constructor <init>(Lo/generateDefaultLayoutParams$onPostMessage;Lo/onDetachedFromWindow;Lo/getTabContainer;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/generateDefaultLayoutParams;->onPostMessage:Lo/generateDefaultLayoutParams$onPostMessage;

    .line 21
    iput-object p2, p0, Lo/generateDefaultLayoutParams;->extraCallback:Lo/onDetachedFromWindow;

    .line 22
    iput-object p3, p0, Lo/generateDefaultLayoutParams;->onMessageChannelReady:Lo/getTabContainer;

    .line 23
    iput-boolean p4, p0, Lo/generateDefaultLayoutParams;->ICustomTabsCallback:Z

    return-void
.end method
