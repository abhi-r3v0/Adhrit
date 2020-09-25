.class final Lo/onLoadChildren$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onLoadChildren;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:Landroid/view/ViewGroup;

.field extraCallback:Landroid/view/View;

.field onMessageChannelReady:Lo/onLoadChildren;

.field onNavigationEvent:Lo/onLoadChildren$onPostMessage;

.field onPostMessage:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
