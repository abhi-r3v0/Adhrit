.class public final Lo/isCurrent$onNavigationEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isCurrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

.field public static final cardview_dark_background:I = 0x7f06005b

.field public static final cardview_light_background:I = 0x7f06005c

.field public static final cardview_shadow_end_color:I = 0x7f06005d

.field public static final cardview_shadow_start_color:I = 0x7f06005e


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/MediaBrowserCompat$MediaItem$Flags;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:C

.field private final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3231
    invoke-static {}, Lo/ringRead$extraCallback;->values()[Lo/ringRead$extraCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/isCurrent$onNavigationEvent;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    :try_start_0
    sget-object v1, Lo/ringRead$extraCallback;->NONE:Lo/ringRead$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/isCurrent$onNavigationEvent;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    sget-object v1, Lo/ringRead$extraCallback;->CONNECTING:Lo/ringRead$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/isCurrent$onNavigationEvent;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    sget-object v1, Lo/ringRead$extraCallback;->CONNECTED:Lo/ringRead$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/isCurrent$onNavigationEvent;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    sget-object v1, Lo/ringRead$extraCallback;->DISCONNECTING:Lo/ringRead$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lo/isCurrent$onNavigationEvent;->$SwitchMap$com$google$firebase$database$tubesock$WebSocket$State:[I

    sget-object v1, Lo/ringRead$extraCallback;->DISCONNECTED:Lo/ringRead$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/MediaBrowserCompat$MediaItem$Flags;",
            ">;CD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-object p1, p0, Lo/isCurrent$onNavigationEvent;->ICustomTabsCallback:Ljava/util/List;

    .line 1032
    iput-char p2, p0, Lo/isCurrent$onNavigationEvent;->onMessageChannelReady:C

    .line 1034
    iput-wide p3, p0, Lo/isCurrent$onNavigationEvent;->onPostMessage:D

    .line 1035
    iput-object p5, p0, Lo/isCurrent$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 1036
    iput-object p6, p0, Lo/isCurrent$onNavigationEvent;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, -0x1

    .line 3018
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DINERS"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "AMERICAN_EXPRESS"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "DINERSCLUBINTERNATIONAL"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "Discover"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "RUPAY"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "VISA"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_6
    const-string v1, "AMEX"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "MASTERCARD"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3041
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0803e5

    goto :goto_2

    :cond_1
    const p0, 0x7f0803e6

    goto :goto_2

    :pswitch_1
    const p0, 0x7f080337

    goto :goto_2

    :pswitch_2
    const p0, 0x7f080335

    goto :goto_2

    :pswitch_3
    const p0, 0x7f080262

    goto :goto_2

    :pswitch_4
    const p0, 0x7f080377

    goto :goto_2

    .line 3020
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f080422

    goto :goto_2

    :cond_2
    const p0, 0x7f080423

    goto :goto_2

    :cond_3
    :goto_1
    const p0, 0x7f08039b

    :goto_2
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x5c9a6f8e -> :sswitch_7
        0x1eb5df -> :sswitch_6
        0x283441 -> :sswitch_5
        0x4ab5f65 -> :sswitch_4
        0x1422dc09 -> :sswitch_3
        0x4c03e2db -> :sswitch_2
        0x5a1ff631 -> :sswitch_1
        0x7832c03d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final hashCode()I
    .locals 3

    .line 1056
    iget-char v0, p0, Lo/isCurrent$onNavigationEvent;->onMessageChannelReady:C

    iget-object v1, p0, Lo/isCurrent$onNavigationEvent;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/isCurrent$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    .line 2017
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2018
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
