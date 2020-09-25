.class public final Lcom/dreamplug/androidapp/utils/network/MoshiGradientOrientationAdapter;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/network/MoshiGradientOrientationAdapter;",
        "",
        "()V",
        "fromJson",
        "Landroid/graphics/drawable/GradientDrawable$Orientation;",
        "direction",
        "",
        "toJson",
        "orientation",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1
    .annotation runtime Lo/nativeInit;
    .end annotation

    const-string v0, "direction"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Left_Right"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p1

    :sswitch_1
    const-string v0, "Top_Bottom"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p1

    :sswitch_2
    const-string v0, "BottomLeft_TopRight"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p1

    :sswitch_3
    const-string v0, "TopLeft_BottomRight"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p1

    .line 29
    :cond_0
    :goto_0
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x689bce52 -> :sswitch_3
        -0x2edcd96c -> :sswitch_2
        -0x3549b6b -> :sswitch_1
        0x7a94fe4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final toJson(Landroid/graphics/drawable/GradientDrawable$Orientation;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lo/instantiateApplication;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 19
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    const-string p1, "Bottom_Top"

    return-object p1

    :pswitch_1
    const-string p1, "BottomRight_TopLeft"

    return-object p1

    :pswitch_2
    const-string p1, "Right_Left"

    return-object p1

    :pswitch_3
    const-string p1, "TopRight_BottomLeft"

    return-object p1

    :pswitch_4
    const-string p1, "BottomLeft_TopRight"

    return-object p1

    :pswitch_5
    const-string p1, "TopLeft_BottomRight"

    return-object p1

    :pswitch_6
    const-string p1, "Left_Right"

    return-object p1

    :pswitch_7
    const-string p1, "Top_Bottom"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
