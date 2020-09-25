.class final Lo/StatusJsonAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/StatusJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatusJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/p$a;)Z
    .locals 1

    .line 77
    iget-object p1, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    const-string/jumbo v0, "text/vtt"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "text/x-ssa"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-subrip"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-quicktime-tx3g"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-608"

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-cea-608"

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/dvbsubs"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/pgs"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onNavigationEvent(Lo/p$a;)Lo/SurchargeDetails;
    .locals 2

    .line 93
    iget-object v0, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "application/ttml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "application/x-subrip"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "application/cea-708"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v1, "application/cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "application/x-mp4-cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "text/x-ssa"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "application/x-quicktime-tx3g"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "text/vtt"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_8
    const-string v1, "application/x-mp4-vtt"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v1, "application/pgs"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v1, "application/dvbsubs"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create decoder for unsupported format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :pswitch_0
    new-instance p1, Lo/UpiGetAccountResponse;

    invoke-direct {p1}, Lo/UpiGetAccountResponse;-><init>()V

    return-object p1

    .line 112
    :pswitch_1
    new-instance v0, Lo/UpiBankLimitJsonAdapter;

    iget-object p1, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/UpiBankLimitJsonAdapter;-><init>(Ljava/util/List;)V

    return-object v0

    .line 110
    :pswitch_2
    new-instance v0, Lo/UpiAccountResponse;

    iget v1, p1, Lo/p$a;->INotificationSideChannel:I

    iget-object p1, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lo/UpiAccountResponse;-><init>(ILjava/util/List;)V

    return-object v0

    .line 108
    :pswitch_3
    new-instance v0, Lo/UpiAccountResponseJsonAdapter;

    iget-object v1, p1, Lo/p$a;->onTransact:Ljava/lang/String;

    iget p1, p1, Lo/p$a;->INotificationSideChannel:I

    invoke-direct {v0, v1, p1}, Lo/UpiAccountResponseJsonAdapter;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 105
    :pswitch_4
    new-instance v0, Lo/Authentication;

    iget-object p1, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/Authentication;-><init>(Ljava/util/List;)V

    return-object v0

    .line 103
    :pswitch_5
    new-instance p1, Lo/VpaAccountJsonAdapter;

    invoke-direct {p1}, Lo/VpaAccountJsonAdapter;-><init>()V

    return-object p1

    .line 101
    :pswitch_6
    new-instance p1, Lo/VpaAccount;

    invoke-direct {p1}, Lo/VpaAccount;-><init>()V

    return-object p1

    .line 99
    :pswitch_7
    new-instance p1, Lo/CheckoutSessionResponseJsonAdapter;

    invoke-direct {p1}, Lo/CheckoutSessionResponseJsonAdapter;-><init>()V

    return-object p1

    .line 97
    :pswitch_8
    new-instance v0, Lo/UpiGetAccountResponseJsonAdapter;

    iget-object p1, p1, Lo/p$a;->ICustomTabsService:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/UpiGetAccountResponseJsonAdapter;-><init>(Ljava/util/List;)V

    return-object v0

    .line 95
    :pswitch_9
    new-instance p1, Lo/CreateSessionResponseJsonAdapter;

    invoke-direct {p1}, Lo/CreateSessionResponseJsonAdapter;-><init>()V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_a
        -0x4a6813e3 -> :sswitch_9
        -0x3d28a9ba -> :sswitch_8
        -0x3be2f26c -> :sswitch_7
        0x2935f49f -> :sswitch_6
        0x310bebca -> :sswitch_5
        0x37713300 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
