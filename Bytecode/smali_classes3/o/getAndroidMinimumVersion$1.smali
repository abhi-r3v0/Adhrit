.class final Lo/getAndroidMinimumVersion$1;
.super Lo/getDynamicLinkDomain;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAndroidMinimumVersion;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private synthetic onMessageChannelReady:Lo/getAndroidMinimumVersion;


# direct methods
.method constructor <init>(Lo/getAndroidMinimumVersion;Landroid/content/Context;II)V
    .locals 0

    .line 168
    iput-object p1, p0, Lo/getAndroidMinimumVersion$1;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    iput p4, p0, Lo/getAndroidMinimumVersion$1;->extraCallback:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lo/getDynamicLinkDomain;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public final calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 2

    .line 171
    iget p1, p0, Lo/getAndroidMinimumVersion$1;->extraCallback:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 172
    iget-object p1, p0, Lo/getAndroidMinimumVersion$1;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    .line 1059
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aput p1, p2, v1

    .line 173
    iget-object p1, p0, Lo/getAndroidMinimumVersion$1;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    .line 2059
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    aput p1, p2, v0

    return-void

    .line 175
    :cond_0
    iget-object p1, p0, Lo/getAndroidMinimumVersion$1;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    .line 3059
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aput p1, p2, v1

    .line 176
    iget-object p1, p0, Lo/getAndroidMinimumVersion$1;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    .line 4059
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    aput p1, p2, v0

    return-void
.end method
