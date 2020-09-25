.class public final Lo/ThemedSpinnerAdapter$Helper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field public final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field public final extraCallback:Lo/setSpeed;

.field public final onMessageChannelReady:Lo/hasStableIds;

.field public final onNavigationEvent:Landroid/widget/TextView;

.field public final onPostMessage:Lo/setSpeed;


# direct methods
.method public constructor <init>(Lo/setSpeed;Lo/hasStableIds;Landroid/widget/TextView;Lo/createFullSpanItemFromEnd;Lo/setSpeed;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lo/ThemedSpinnerAdapter$Helper;->onPostMessage:Lo/setSpeed;

    .line 61
    iput-object p2, p0, Lo/ThemedSpinnerAdapter$Helper;->onMessageChannelReady:Lo/hasStableIds;

    .line 62
    iput-object p3, p0, Lo/ThemedSpinnerAdapter$Helper;->onNavigationEvent:Landroid/widget/TextView;

    .line 63
    iput-object p4, p0, Lo/ThemedSpinnerAdapter$Helper;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 64
    iput-object p5, p0, Lo/ThemedSpinnerAdapter$Helper;->extraCallback:Lo/setSpeed;

    return-void
.end method
