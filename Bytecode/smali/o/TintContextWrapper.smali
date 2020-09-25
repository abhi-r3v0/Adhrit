.class public final Lo/TintContextWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field public final ICustomTabsCallback:Lo/flagRemovedAndOffsetPosition;

.field public final extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

.field public final onMessageChannelReady:Lo/flagRemovedAndOffsetPosition;

.field public final onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

.field public final onPostMessage:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Lo/flagRemovedAndOffsetPosition;Lo/flagRemovedAndOffsetPosition;Lo/flagRemovedAndOffsetPosition;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/TintContextWrapper;->onPostMessage:Landroid/widget/LinearLayout;

    .line 38
    iput-object p2, p0, Lo/TintContextWrapper;->extraCallback:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    iput-object p3, p0, Lo/TintContextWrapper;->onNavigationEvent:Lo/flagRemovedAndOffsetPosition;

    .line 40
    iput-object p4, p0, Lo/TintContextWrapper;->ICustomTabsCallback:Lo/flagRemovedAndOffsetPosition;

    .line 41
    iput-object p5, p0, Lo/TintContextWrapper;->onMessageChannelReady:Lo/flagRemovedAndOffsetPosition;

    return-void
.end method
