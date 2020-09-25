.class public final Lo/u$d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final extraCallback:Lo/u$d;

.field private static final onMessageChannelReady:Lo/u$d;


# instance fields
.field private final onNavigationEvent:I

.field private final onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    new-instance v0, Lo/u$d;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lo/u$d;-><init>([II)V

    sput-object v0, Lo/u$d;->extraCallback:Lo/u$d;

    .line 42
    new-instance v0, Lo/u$d;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v2}, Lo/u$d;-><init>([II)V

    sput-object v0, Lo/u$d;->onMessageChannelReady:Lo/u$d;

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 109
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lo/u$d;->onPostMessage:[I

    .line 110
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 112
    iput-object p1, p0, Lo/u$d;->onPostMessage:[I

    .line 114
    :goto_0
    iput p2, p0, Lo/u$d;->onNavigationEvent:I

    return-void
.end method

.method public static extraCallback(Landroid/content/Context;)Lo/u$d;
    .locals 2

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-static {p0, v0}, Lo/u$d;->onPostMessage(Landroid/content/Context;Landroid/content/Intent;)Lo/u$d;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent()Z
    .locals 2

    .line 159
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lo/ThirdPartyAuthorizeRequest;->onPostMessage:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static onPostMessage(Landroid/content/Context;Landroid/content/Intent;)Lo/u$d;
    .locals 3

    .line 68
    invoke-static {}, Lo/u$d;->onNavigationEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "external_surround_sound_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 70
    sget-object p0, Lo/u$d;->onMessageChannelReady:Lo/u$d;

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 72
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    new-instance p0, Lo/u$d;

    const-string v0, "android.media.extra.ENCODINGS"

    .line 76
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 77
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lo/u$d;-><init>([II)V

    return-object p0

    .line 73
    :cond_2
    :goto_0
    sget-object p0, Lo/u$d;->extraCallback:Lo/u$d;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lo/u$d;->onPostMessage:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 139
    :cond_0
    instance-of v1, p1, Lo/u$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 142
    :cond_1
    check-cast p1, Lo/u$d;

    .line 143
    iget-object v1, p0, Lo/u$d;->onPostMessage:[I

    iget-object v3, p1, Lo/u$d;->onPostMessage:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lo/u$d;->onNavigationEvent:I

    iget p1, p1, Lo/u$d;->onNavigationEvent:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 149
    iget v0, p0, Lo/u$d;->onNavigationEvent:I

    iget-object v1, p0, Lo/u$d;->onPostMessage:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 131
    iget v0, p0, Lo/u$d;->onNavigationEvent:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/u$d;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/u$d;->onPostMessage:[I

    .line 155
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
