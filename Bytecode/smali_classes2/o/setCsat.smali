.class public final Lo/setCsat;
.super Lo/getTags;
.source ""

# interfaces
.implements Lo/getTimestampSeconds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getTags;",
        "Lo/getTimestampSeconds<",
        "Lo/setCsat;",
        "Lo/DefaultCsatConfig$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setCsat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Lo/setMessages;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lo/isRequireDebugLog;

    invoke-direct {v0}, Lo/isRequireDebugLog;-><init>()V

    sput-object v0, Lo/setCsat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTags;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/setMessages;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/getTags;-><init>()V

    .line 3
    iput-object p1, p0, Lo/setCsat;->ICustomTabsCallback:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo/setCsat;->onMessageChannelReady:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lo/setCsat;->onPostMessage:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lo/setCsat;->onNavigationEvent:Lo/setMessages;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lo/setCsat;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final asBinder()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lo/setCsat;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Lo/setMessages;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/setCsat;->onNavigationEvent:Lo/setMessages;

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lo/setCsat;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/setCsat;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lo/setCsat;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lo/setCsat;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onTransact()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lo/setCsat;->onNavigationEvent:Lo/setMessages;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 17
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result v0

    .line 19
    iget-object v1, p0, Lo/setCsat;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 21
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    iget-object v1, p0, Lo/setCsat;->onMessageChannelReady:Ljava/lang/String;

    const/4 v3, 0x3

    .line 25
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 27
    iget-object v1, p0, Lo/setCsat;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x4

    .line 29
    invoke-static {p1, v3, v1, v2}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 31
    iget-object v1, p0, Lo/setCsat;->onNavigationEvent:Lo/setMessages;

    const/4 v3, 0x5

    .line 33
    invoke-static {p1, v3, v1, p2, v2}, Lo/extraCallback;->onMessageChannelReady(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 34
    invoke-static {p1, v0}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final synthetic zza(Lo/access$502;)Lo/getTimestampSeconds;
    .locals 2

    .line 38
    instance-of v0, p1, Lo/DefaultCsatConfig$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Lo/DefaultCsatConfig$ICustomTabsCallback;

    .line 41
    invoke-virtual {p1}, Lo/DefaultCsatConfig$ICustomTabsCallback;->onTransact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$extraCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setCsat;->ICustomTabsCallback:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lo/DefaultCsatConfig$ICustomTabsCallback;->asBinder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$extraCallback;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/setCsat;->onMessageChannelReady:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lo/DefaultCsatConfig$ICustomTabsCallback;->asInterface()Lo/getReadUpto;

    move-result-object v0

    .line 44
    sget-object v1, Lo/hasPendingCsat;->onMessageChannelReady:[I

    invoke-virtual {v0}, Lo/getReadUpto;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "REVERT_SECOND_FACTOR_ADDITION"

    goto :goto_0

    :pswitch_1
    const-string v0, "RECOVER_EMAIL"

    goto :goto_0

    :pswitch_2
    const-string v0, "VERIFY_BEFORE_UPDATE_EMAIL"

    goto :goto_0

    :pswitch_3
    const-string v0, "EMAIL_SIGNIN"

    goto :goto_0

    :pswitch_4
    const-string v0, "PASSWORD_RESET"

    goto :goto_0

    :pswitch_5
    const-string v0, "VERIFY_EMAIL"

    .line 52
    :goto_0
    iput-object v0, p0, Lo/setCsat;->onPostMessage:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lo/DefaultCsatConfig$ICustomTabsCallback;->warmup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lo/DefaultCsatConfig$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy()Lo/DefaultRefreshIntervals;

    move-result-object p1

    invoke-static {p1}, Lo/setMessages;->ICustomTabsCallback(Lo/DefaultRefreshIntervals;)Lo/setMessages;

    move-result-object p1

    iput-object p1, p0, Lo/setCsat;->onNavigationEvent:Lo/setMessages;

    :cond_0
    return-object p0

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed proto must be an instance of ResetPasswordResponse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Lo/uploadState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/uploadState<",
            "Lo/DefaultCsatConfig$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lo/DefaultCsatConfig$ICustomTabsCallback;->ICustomTabsService()Lo/uploadState;

    move-result-object v0

    return-object v0
.end method
