.class public final Lo/addDisappearingView$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addDisappearingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/adapter/paymentV2/dataListTemplatePs1/NBAPaymentsPs5DataListAdapter$Companion;",
        "",
        "()V",
        "LIFESTYLE_ITEM",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lo/hash;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setCsat;)V
    .locals 10

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    invoke-virtual {p1}, Lo/setCsat;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/setCsat;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/setCsat;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/addDisappearingView$onNavigationEvent;->zzb:Ljava/lang/String;

    .line 1003
    invoke-virtual {p1}, Lo/setCsat;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/addDisappearingView$onNavigationEvent;->zzc:Ljava/lang/String;

    .line 1004
    invoke-virtual {p1}, Lo/setCsat;->asBinder()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 1005
    iput v2, p0, Lo/addDisappearingView$onNavigationEvent;->zza:I

    .line 1006
    iput-object v1, p0, Lo/addDisappearingView$onNavigationEvent;->zzd:Lo/hash;

    return-void

    .line 1008
    :cond_1
    invoke-virtual {p1}, Lo/setCsat;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    .line 1009
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "RECOVER_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "EMAIL_SIGNIN"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "VERIFY_BEFORE_UPDATE_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "VERIFY_EMAIL"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_4
    const-string v4, "PASSWORD_RESET"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string v4, "REVERT_SECOND_FACTOR_ADDITION"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    :cond_2
    :goto_1
    if-eqz v3, :cond_8

    if-eq v3, v8, :cond_7

    if-eq v3, v7, :cond_6

    if-eq v3, v2, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v6, :cond_3

    const/4 v5, 0x3

    goto :goto_2

    :cond_3
    const/4 v5, 0x6

    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    goto :goto_2

    :cond_5
    const/4 v5, 0x5

    goto :goto_2

    :cond_6
    const/4 v5, 0x4

    goto :goto_2

    :cond_7
    const/4 v5, 0x1

    .line 1017
    :cond_8
    :goto_2
    iput v5, p0, Lo/addDisappearingView$onNavigationEvent;->zza:I

    if-eq v5, v9, :cond_d

    if-ne v5, v2, :cond_9

    goto :goto_4

    .line 1022
    :cond_9
    invoke-virtual {p1}, Lo/setCsat;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1023
    new-instance v1, Lo/sha1;

    .line 1024
    invoke-virtual {p1}, Lo/setCsat;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-virtual {p1}, Lo/setCsat;->extraCallback()Lo/setMessages;

    move-result-object p1

    invoke-static {p1}, Lo/extraCallback;->zza(Lo/setMessages;)Lo/createCipher;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lo/sha1;-><init>(Ljava/lang/String;Lo/createCipher;)V

    goto :goto_3

    .line 1027
    :cond_a
    invoke-virtual {p1}, Lo/setCsat;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1028
    new-instance v1, Lo/access$1300;

    invoke-virtual {p1}, Lo/setCsat;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/setCsat;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lo/access$1300;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1029
    :cond_b
    invoke-virtual {p1}, Lo/setCsat;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1030
    new-instance v1, Lo/access$1400;

    invoke-virtual {p1}, Lo/setCsat;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/access$1400;-><init>(Ljava/lang/String;)V

    .line 1032
    :cond_c
    :goto_3
    iput-object v1, p0, Lo/addDisappearingView$onNavigationEvent;->zzd:Lo/hash;

    return-void

    .line 1019
    :cond_d
    :goto_4
    iput-object v1, p0, Lo/addDisappearingView$onNavigationEvent;->zzd:Lo/hash;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fbac124 -> :sswitch_5
        -0x56916d75 -> :sswitch_4
        -0x4ffacbca -> :sswitch_3
        -0x4cd06780 -> :sswitch_2
        0x33e669c5 -> :sswitch_1
        0x39d86cc1 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final getData(I)Ljava/lang/String;
    .locals 3

    .line 1036
    iget v0, p0, Lo/addDisappearingView$onNavigationEvent;->zza:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return-object v1

    .line 1040
    :cond_1
    iget-object p1, p0, Lo/addDisappearingView$onNavigationEvent;->zzc:Ljava/lang/String;

    return-object p1

    .line 1039
    :cond_2
    iget-object p1, p0, Lo/addDisappearingView$onNavigationEvent;->zzb:Ljava/lang/String;

    return-object p1
.end method

.method public final getInfo()Lo/hash;
    .locals 1

    .line 1035
    iget-object v0, p0, Lo/addDisappearingView$onNavigationEvent;->zzd:Lo/hash;

    return-object v0
.end method

.method public final getOperation()I
    .locals 1

    .line 1034
    iget v0, p0, Lo/addDisappearingView$onNavigationEvent;->zza:I

    return v0
.end method
