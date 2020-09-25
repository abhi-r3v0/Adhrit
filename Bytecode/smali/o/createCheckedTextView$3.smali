.class final Lo/createCheckedTextView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->onNavigationEvent(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:F

.field private synthetic extraCallback:Lo/createCheckedTextView;

.field private synthetic onMessageChannelReady:F


# direct methods
.method constructor <init>(Lo/createCheckedTextView;FF)V
    .locals 0

    .line 665
    iput-object p1, p0, Lo/createCheckedTextView$3;->extraCallback:Lo/createCheckedTextView;

    iput p2, p0, Lo/createCheckedTextView$3;->ICustomTabsCallback:F

    iput p3, p0, Lo/createCheckedTextView$3;->onMessageChannelReady:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 668
    iget-object v0, p0, Lo/createCheckedTextView$3;->extraCallback:Lo/createCheckedTextView;

    iget v1, p0, Lo/createCheckedTextView$3;->ICustomTabsCallback:F

    iget v2, p0, Lo/createCheckedTextView$3;->onMessageChannelReady:F

    invoke-virtual {v0, v1, v2}, Lo/createCheckedTextView;->onNavigationEvent(FF)V

    return-void
.end method
