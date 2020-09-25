.class public final Lo/fixEndGap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/widget/ButtonUtils;",
        "",
        "()V",
        "textToStyle",
        "",
        "style",
        "",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/fixEndGap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lo/fixEndGap;

    invoke-direct {v0}, Lo/fixEndGap;-><init>()V

    sput-object v0, Lo/fixEndGap;->extraCallback:Lo/fixEndGap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0xe

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v1, "s_tDarkTwo_bgWhiteFour"

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x9

    return p0

    :sswitch_1
    const-string/jumbo v1, "s_tWhiteFour_bgDarkTwo"

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    :sswitch_2
    const-string/jumbo v1, "s_tLightGrey_bgLightGrey10"

    .line 129
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xc

    return p0

    :sswitch_3
    const-string v1, "h_tWhiteFour_brWhiteFour"

    .line 127
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    return p0

    :sswitch_4
    const-string/jumbo v1, "s_tDarkTwo_bgLightPeach"

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :sswitch_5
    const-string v1, "h_tBlueberry_brBlueberry"

    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    return p0

    :sswitch_6
    const-string/jumbo v1, "s_tLightPeach_bgDarkTwo"

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :sswitch_7
    const-string/jumbo v1, "s_tLightCopperPeach_bgDarkTwo"

    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xf

    return p0

    :sswitch_8
    const-string/jumbo v1, "s_tLightPeach_bgBlueberry"

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :sswitch_9
    const-string v1, "h_tLightPeach_brLightPeach"

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xb

    return p0

    :sswitch_a
    const-string/jumbo v1, "s_tLightPeach_bgLightPeach8"

    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xd

    return p0

    :sswitch_b
    const-string/jumbo v1, "s_tDarkTwo_bgDarkTwo8"

    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    return p0

    :sswitch_c
    const-string/jumbo v1, "s_tbgBlack_bgBlack10"

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x10

    return p0

    :sswitch_d
    const-string/jumbo v1, "s_tBlueberry_bgWhiteFour"

    .line 125
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    return p0

    :sswitch_e
    const-string/jumbo v1, "s_tWhiteFour_bgBlack"

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :sswitch_f
    const-string v1, "h_tDarkTwo_brDarkTwo"

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    return p0

    :sswitch_10
    const-string/jumbo v1, "s_tBlueberry_bgLightPeach"

    .line 118
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x698564b5 -> :sswitch_10
        -0x66845e60 -> :sswitch_f
        -0x5dbae75e -> :sswitch_e
        -0x5d5c9161 -> :sswitch_d
        -0x4bf66f94 -> :sswitch_c
        -0x3e65a5e8 -> :sswitch_b
        -0x19b70b64 -> :sswitch_a
        -0xa2df4ee -> :sswitch_9
        -0x1cb9945 -> :sswitch_8
        0x17f55a9c -> :sswitch_7
        0x1b774e75 -> :sswitch_6
        0x24b7b16c -> :sswitch_5
        0x27ed2f91 -> :sswitch_4
        0x4c1448d2 -> :sswitch_3
        0x7b977dfd -> :sswitch_2
        0x7d5b8ad9 -> :sswitch_1
        0x7e0a3999 -> :sswitch_0
    .end sparse-switch
.end method
