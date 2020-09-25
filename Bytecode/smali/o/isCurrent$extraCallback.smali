.class public final Lo/isCurrent$extraCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isCurrent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

.field public static final cardBackgroundColor:I = 0x7f040089

.field public static final cardCornerRadius:I = 0x7f04008a

.field public static final cardElevation:I = 0x7f04008b

.field public static final cardMaxElevation:I = 0x7f04008d

.field public static final cardPreventCornerOverlap:I = 0x7f04008e

.field public static final cardUseCompatPadding:I = 0x7f04008f

.field public static final cardViewStyle:I = 0x7f040090

.field public static final contentPadding:I = 0x7f0400ee

.field public static final contentPaddingBottom:I = 0x7f0400ef

.field public static final contentPaddingLeft:I = 0x7f0400f0

.field public static final contentPaddingRight:I = 0x7f0400f1

.field public static final contentPaddingTop:I = 0x7f0400f2


# instance fields
.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3035
    invoke-static {}, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->values()[Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/isCurrent$extraCallback;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    :try_start_0
    sget-object v1, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V1:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/isCurrent$extraCallback;->$SwitchMap$com$google$firebase$database$snapshot$Node$HashVersion:[I

    sget-object v1, Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;->V2:Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput-object p1, p0, Lo/isCurrent$extraCallback;->extraCallback:Ljava/lang/String;

    .line 1017
    iput-object p2, p0, Lo/isCurrent$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 1018
    iput-object p3, p0, Lo/isCurrent$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    .line 2018
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

    :pswitch_0
    const p0, 0x7f0803e5

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

    :pswitch_5
    const p0, 0x7f080422

    goto :goto_2

    :cond_1
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
