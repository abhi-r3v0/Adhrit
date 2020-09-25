.class final Lo/createCheckedTextView$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCheckedTextView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createCheckedTextView;->onNavigationEvent(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:F

.field private synthetic onPostMessage:Lo/createCheckedTextView;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;F)V
    .locals 0

    .line 756
    iput-object p1, p0, Lo/createCheckedTextView$10;->onPostMessage:Lo/createCheckedTextView;

    iput p2, p0, Lo/createCheckedTextView$10;->onMessageChannelReady:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 759
    iget-object v0, p0, Lo/createCheckedTextView$10;->onPostMessage:Lo/createCheckedTextView;

    iget v1, p0, Lo/createCheckedTextView$10;->onMessageChannelReady:F

    invoke-virtual {v0, v1}, Lo/createCheckedTextView;->onNavigationEvent(F)V

    return-void
.end method
