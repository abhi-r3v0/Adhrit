.class public abstract Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# instance fields
.field protected volatile subscribe:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->subscribe:I

    return-void
.end method

.method public static final onMessageChannelReady(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;[B)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbfh;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;[BII)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    move-result-object p0

    return-object p0
.end method

.method public static final onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)[B
    .locals 3

    invoke-virtual {p0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2, v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady([BII)Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V

    invoke-virtual {v0}, Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;->onMessageChannelReady()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static final onPostMessage(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;[BII)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbfh;
        }
    .end annotation

    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lo/TemplateDataJsonAdapter;->onPostMessage([BII)Lo/TemplateDataJsonAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    invoke-virtual {p1, p2}, Lo/TemplateDataJsonAdapter;->onPostMessage(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbfh; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady()Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    move-result-object v0

    return-object v0
.end method

.method protected extraCallback()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMessageChannelReady()Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    invoke-virtual {p0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->extraCallback()I

    move-result v0

    iput v0, p0, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->subscribe:I

    return v0
.end method

.method public abstract onNavigationEvent(Lo/TemplateDataJsonAdapter;)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public onPostMessage(Lo/AadharSingleSimSelector$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lo/ClaimedRewardDetailsFragment$Extra$$Parcelable;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
