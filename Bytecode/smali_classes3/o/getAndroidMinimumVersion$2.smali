.class final Lo/getAndroidMinimumVersion$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAndroidMinimumVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:I

.field private synthetic onPostMessage:Lo/getAndroidMinimumVersion;


# direct methods
.method constructor <init>(Lo/getAndroidMinimumVersion;I)V
    .locals 0

    .line 450
    iput-object p1, p0, Lo/getAndroidMinimumVersion$2;->onPostMessage:Lo/getAndroidMinimumVersion;

    iput p2, p0, Lo/getAndroidMinimumVersion$2;->onMessageChannelReady:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 453
    iget-object v0, p0, Lo/getAndroidMinimumVersion$2;->onPostMessage:Lo/getAndroidMinimumVersion;

    .line 1059
    iget-object v0, v0, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 453
    iget v1, p0, Lo/getAndroidMinimumVersion$2;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
