.class public final Lo/getSharedPrefs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 174
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "_in"

    const-string v2, "_xa"

    const-string v3, "_xu"

    const-string v4, "_aq"

    const-string v5, "_aa"

    const-string v6, "_ai"

    const-string v7, "_ac"

    const-string v8, "campaign_details"

    const-string v9, "_ug"

    const-string v10, "_iapx"

    const-string v11, "_exp_set"

    const-string v12, "_exp_clear"

    const-string v13, "_exp_activate"

    const-string v14, "_exp_timeout"

    const-string v15, "_exp_expire"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lo/getSharedPrefs;->zza:Ljava/util/Set;

    const-string v2, "_e"

    const-string v3, "_f"

    const-string v4, "_iap"

    const-string v5, "_s"

    const-string v6, "_au"

    const-string v7, "_ui"

    const-string v8, "_cd"

    .line 176
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/getSharedPrefs;->zzb:Ljava/util/List;

    const-string v0, "auto"

    const-string v1, "app"

    const-string v2, "am"

    .line 178
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/getSharedPrefs;->zzc:Ljava/util/List;

    const-string v0, "_r"

    const-string v1, "_dbg"

    .line 180
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/getSharedPrefs;->zzd:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    .line 181
    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$extraCallback;->extraCallback:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement$extraCallback;->ICustomTabsCallback:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 182
    invoke-static {v0}, Lo/extraCallback;->onMessageChannelReady([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 183
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/getSharedPrefs;->zze:Ljava/util/List;

    const-string v0, "^_ltv_[A-Z]{3}$"

    const-string v1, "^_cc[1-5]{1}$"

    .line 184
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/getSharedPrefs;->zzf:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getSharedPrefs;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    return-void
.end method

.method public static zza(Landroid/os/Bundle;)Lo/convertLongToFourByteBuffer$ICustomTabsCallback;
    .locals 7

    if-eqz p0, :cond_0

    .line 95
    new-instance v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;

    invoke-direct {v0}, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;-><init>()V

    .line 96
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "origin"

    .line 97
    invoke-static {p0, v3, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->origin:Ljava/lang/String;

    .line 98
    const-class v1, Ljava/lang/String;

    const-string v3, "name"

    .line 99
    invoke-static {p0, v3, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->name:Ljava/lang/String;

    .line 100
    const-class v1, Ljava/lang/Object;

    const-string v3, "value"

    .line 101
    invoke-static {p0, v3, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->value:Ljava/lang/Object;

    .line 102
    const-class v1, Ljava/lang/String;

    const-string v3, "trigger_event_name"

    .line 103
    invoke-static {p0, v3, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerEventName:Ljava/lang/String;

    .line 104
    const-class v1, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    .line 105
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "trigger_timeout"

    .line 106
    invoke-static {p0, v6, v1, v5}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerTimeout:J

    .line 107
    const-class v1, Ljava/lang/String;

    const-string v5, "timed_out_event_name"

    .line 108
    invoke-static {p0, v5, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventName:Ljava/lang/String;

    .line 109
    const-class v1, Landroid/os/Bundle;

    const-string v5, "timed_out_event_params"

    .line 110
    invoke-static {p0, v5, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventParams:Landroid/os/Bundle;

    .line 111
    const-class v1, Ljava/lang/String;

    const-string v5, "triggered_event_name"

    .line 112
    invoke-static {p0, v5, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventName:Ljava/lang/String;

    .line 113
    const-class v1, Landroid/os/Bundle;

    const-string v5, "triggered_event_params"

    .line 114
    invoke-static {p0, v5, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventParams:Landroid/os/Bundle;

    .line 115
    const-class v1, Ljava/lang/Long;

    .line 116
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "time_to_live"

    .line 117
    invoke-static {p0, v6, v1, v5}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timeToLive:J

    .line 118
    const-class v1, Ljava/lang/String;

    const-string v5, "expired_event_name"

    .line 119
    invoke-static {p0, v5, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventName:Ljava/lang/String;

    .line 120
    const-class v1, Landroid/os/Bundle;

    const-string v5, "expired_event_params"

    .line 121
    invoke-static {p0, v5, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventParams:Landroid/os/Bundle;

    .line 122
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "active"

    .line 124
    invoke-static {p0, v5, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->active:Z

    .line 125
    const-class v1, Ljava/lang/Long;

    .line 126
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "creation_timestamp"

    .line 127
    invoke-static {p0, v5, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->creationTimestamp:J

    .line 128
    const-class v1, Ljava/lang/Long;

    .line 129
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "triggered_timestamp"

    .line 130
    invoke-static {p0, v3, v1, v2}, Lo/setChipIconVisible;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredTimestamp:J

    return-object v0

    .line 1002
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lo/getSharedPrefs;->zzc:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zza(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 2
    sget-object v0, Lo/getSharedPrefs;->zzb:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    sget-object p0, Lo/getSharedPrefs;->zzd:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "_ce1"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fcm"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_7

    const-string v0, "_ce2"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "_ln"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v2

    .line 15
    :cond_3
    sget-object p0, Lo/getSharedPrefs;->zze:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    .line 17
    :cond_4
    sget-object p0, Lo/getSharedPrefs;->zzf:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_6
    return v2

    .line 12
    :cond_7
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "frc"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    return v3

    :cond_9
    :goto_2
    return v2
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    const-string v0, "_cmp"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 51
    :cond_0
    invoke-static {p0}, Lo/getSharedPrefs;->zza(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    return v1

    .line 55
    :cond_2
    sget-object p1, Lo/getSharedPrefs;->zzd:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_4
    const/4 p1, -0x1

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x18b50

    const/4 v4, 0x2

    if-eq v2, v3, :cond_7

    const v3, 0x18b6e

    if-eq v2, v3, :cond_6

    const v3, 0x2ff42f

    if-eq v2, v3, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "fiam"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p1, 0x2

    goto :goto_0

    :cond_6
    const-string v2, "fdl"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const-string v2, "fcm"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p1, 0x0

    :cond_8
    :goto_0
    const-string p0, "_cis"

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_a

    if-eq p1, v4, :cond_9

    return v1

    :cond_9
    const-string p1, "fiam_integration"

    .line 64
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_a
    const-string p1, "fdl_integration"

    .line 62
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    const-string p1, "fcm_integration"

    .line 60
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static zza(Lo/convertLongToFourByteBuffer$ICustomTabsCallback;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 24
    :cond_0
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->origin:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->value:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->value:Ljava/lang/Object;

    invoke-static {v2}, Lo/setDividerDrawableHorizontal;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 29
    :cond_2
    invoke-static {v1}, Lo/getSharedPrefs;->zza(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 31
    :cond_3
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 33
    :cond_4
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 34
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventName:Ljava/lang/String;

    iget-object v3, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventParams:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    .line 36
    :cond_5
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventName:Ljava/lang/String;

    iget-object v3, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    .line 38
    :cond_6
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 39
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventName:Ljava/lang/String;

    iget-object v3, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventParams:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    .line 41
    :cond_7
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventName:Ljava/lang/String;

    iget-object v3, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_8

    return v0

    .line 43
    :cond_8
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventName:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 44
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventName:Ljava/lang/String;

    iget-object v3, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventParams:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    .line 46
    :cond_9
    iget-object v2, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventName:Ljava/lang/String;

    iget-object p0, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2, p0}, Lo/getSharedPrefs;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_0
    return v0
.end method

.method public static zzb(Lo/convertLongToFourByteBuffer$ICustomTabsCallback;)Landroid/os/Bundle;
    .locals 4

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->origin:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->origin:Ljava/lang/String;

    const-string v2, "origin"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->value:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->value:Ljava/lang/Object;

    invoke-static {v0, v1}, Lo/setChipIconVisible;->onNavigationEvent(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 74
    :cond_2
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerEventName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerEventName:Ljava/lang/String;

    const-string v2, "trigger_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_3
    iget-wide v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggerTimeout:J

    const-string v3, "trigger_timeout"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 78
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventName:Ljava/lang/String;

    const-string v2, "timed_out_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_4
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    .line 80
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timedOutEventParams:Landroid/os/Bundle;

    const-string v2, "timed_out_event_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 81
    :cond_5
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 82
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventName:Ljava/lang/String;

    const-string v2, "triggered_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_6
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    .line 84
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredEventParams:Landroid/os/Bundle;

    const-string v2, "triggered_event_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    :cond_7
    iget-wide v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->timeToLive:J

    const-string v3, "time_to_live"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 87
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventName:Ljava/lang/String;

    const-string v2, "expired_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_8
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 89
    iget-object v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->expiredEventParams:Landroid/os/Bundle;

    const-string v2, "expired_event_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    :cond_9
    iget-wide v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->creationTimestamp:J

    const-string v3, "creation_timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    iget-boolean v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->active:Z

    const-string v2, "active"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    iget-wide v1, p0, Lo/convertLongToFourByteBuffer$ICustomTabsCallback;->triggeredTimestamp:J

    const-string p0, "triggered_timestamp"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "clx"

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_ae"

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x1

    const-string v0, "_r"

    .line 172
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static zzb(Ljava/lang/String;)Z
    .locals 1

    .line 10
    sget-object v0, Lo/getSharedPrefs;->zza:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzc(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 136
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 137
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 139
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 140
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    .line 142
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    .line 144
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static zzd(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 151
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 152
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_2

    if-eq v1, v3, :cond_2

    return v0

    .line 154
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 155
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_4

    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 157
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_3

    return v0

    .line 159
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static zze(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 162
    invoke-static {p0}, Lcom/google/android/gms/measurement/AppMeasurement$onMessageChannelReady;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static zzf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 166
    invoke-static {p0}, Lcom/google/android/gms/measurement/AppMeasurement$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/getSharedPrefs;->arg$1:Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;

    invoke-virtual {v0}, Lcom/google/firebase/iid/MessengerIpcClient$extraCallback;->lambda$scheduleSendingRequests$2$MessengerIpcClient$Connection()V

    return-void
.end method
