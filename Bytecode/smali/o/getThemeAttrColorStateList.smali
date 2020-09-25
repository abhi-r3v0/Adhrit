.class public final Lo/getThemeAttrColorStateList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field public final extraCallback:Landroid/widget/FrameLayout;

.field public final onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/getThemeAttrColorStateList;->extraCallback:Landroid/widget/FrameLayout;

    .line 27
    iput-object p2, p0, Lo/getThemeAttrColorStateList;->onPostMessage:Landroid/widget/TextView;

    return-void
.end method
