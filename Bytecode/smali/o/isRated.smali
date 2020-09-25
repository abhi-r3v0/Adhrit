.class public final Lo/isRated;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isRated$extraCallback;,
        Lo/isRated$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Ljava/lang/String;

.field private static asInterface:Lo/isRated;

.field public static final extraCallback:Ljava/lang/String;

.field static final onMessageChannelReady:Lo/getRatingStyle;

.field private static onTransact:Lo/isRated;


# instance fields
.field public final onNavigationEvent:Z

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:Lo/getRatingStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 85
    sget-object v0, Lo/newPercentageRating;->extraCallback:Lo/getRatingStyle;

    sput-object v0, Lo/isRated;->onMessageChannelReady:Lo/getRatingStyle;

    const/16 v0, 0x200e

    .line 115
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/isRated;->ICustomTabsCallback:Ljava/lang/String;

    const/16 v0, 0x200f

    .line 120
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/isRated;->extraCallback:Ljava/lang/String;

    .line 217
    new-instance v0, Lo/isRated;

    sget-object v1, Lo/isRated;->onMessageChannelReady:Lo/getRatingStyle;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lo/isRated;-><init>(ZILo/getRatingStyle;)V

    sput-object v0, Lo/isRated;->asInterface:Lo/isRated;

    .line 222
    new-instance v0, Lo/isRated;

    sget-object v1, Lo/isRated;->onMessageChannelReady:Lo/getRatingStyle;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Lo/isRated;-><init>(ZILo/getRatingStyle;)V

    sput-object v0, Lo/isRated;->onTransact:Lo/isRated;

    return-void
.end method

.method private constructor <init>(ZILo/getRatingStyle;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-boolean p1, p0, Lo/isRated;->onNavigationEvent:Z

    .line 264
    iput p2, p0, Lo/isRated;->onPostMessage:I

    .line 265
    iput-object p3, p0, Lo/isRated;->onRelationshipValidationResult:Lo/getRatingStyle;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/isRated;
    .locals 4

    .line 236
    new-instance v0, Lo/isRated$ICustomTabsCallback;

    invoke-direct {v0}, Lo/isRated$ICustomTabsCallback;-><init>()V

    .line 1205
    iget v1, v0, Lo/isRated$ICustomTabsCallback;->ICustomTabsCallback:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lo/isRated$ICustomTabsCallback;->onMessageChannelReady:Lo/getRatingStyle;

    sget-object v2, Lo/isRated;->onMessageChannelReady:Lo/getRatingStyle;

    if-ne v1, v2, :cond_1

    .line 1207
    iget-boolean v0, v0, Lo/isRated$ICustomTabsCallback;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 2198
    sget-object v0, Lo/isRated;->onTransact:Lo/isRated;

    return-object v0

    :cond_0
    sget-object v0, Lo/isRated;->asInterface:Lo/isRated;

    return-object v0

    .line 1209
    :cond_1
    new-instance v1, Lo/isRated;

    iget-boolean v2, v0, Lo/isRated$ICustomTabsCallback;->extraCallback:Z

    iget v3, v0, Lo/isRated$ICustomTabsCallback;->ICustomTabsCallback:I

    iget-object v0, v0, Lo/isRated$ICustomTabsCallback;->onMessageChannelReady:Lo/getRatingStyle;

    invoke-direct {v1, v2, v3, v0}, Lo/isRated;-><init>(ZILo/getRatingStyle;)V

    return-object v1
.end method

.method public static extraCallback(Ljava/lang/CharSequence;)I
    .locals 13

    .line 558
    new-instance v0, Lo/isRated$extraCallback;

    invoke-direct {v0, p0}, Lo/isRated$extraCallback;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 3646
    iput p0, v0, Lo/isRated$extraCallback;->onPostMessage:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3650
    :cond_0
    :goto_0
    iget v6, v0, Lo/isRated$extraCallback;->onPostMessage:I

    iget v7, v0, Lo/isRated$extraCallback;->onMessageChannelReady:I

    if-ge v6, v7, :cond_f

    if-nez v3, :cond_f

    .line 3816
    iget-object v6, v0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    iget v7, v0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lo/isRated$extraCallback;->asInterface:C

    .line 3817
    iget-char v6, v0, Lo/isRated$extraCallback;->asInterface:C

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3818
    iget-object v6, v0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    iget v7, v0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-static {v6, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 3819
    iget v7, v0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 3820
    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v6

    goto/16 :goto_4

    .line 3822
    :cond_1
    iget v6, v0, Lo/isRated$extraCallback;->onPostMessage:I

    add-int/2addr v6, v2

    iput v6, v0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 3823
    iget-char v6, v0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v7, 0x700

    if-ge v6, v7, :cond_2

    .line 4803
    sget-object v7, Lo/isRated$extraCallback;->extraCallback:[B

    aget-byte v6, v7, v6

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v6

    .line 3824
    :goto_1
    iget-boolean v7, v0, Lo/isRated$extraCallback;->onNavigationEvent:Z

    const/16 v8, 0xc

    if-eqz v7, :cond_b

    .line 3826
    iget-char v7, v0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v9, 0x3c

    if-ne v7, v9, :cond_8

    .line 4872
    iget v6, v0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 4873
    :cond_3
    :goto_2
    iget v7, v0, Lo/isRated$extraCallback;->onPostMessage:I

    iget v10, v0, Lo/isRated$extraCallback;->onMessageChannelReady:I

    if-ge v7, v10, :cond_7

    .line 4874
    iget-object v7, v0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    iget v10, v0, Lo/isRated$extraCallback;->onPostMessage:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-interface {v7, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    iput-char v7, v0, Lo/isRated$extraCallback;->asInterface:C

    .line 4875
    iget-char v7, v0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v10, 0x3e

    if-ne v7, v10, :cond_4

    goto :goto_3

    .line 4879
    :cond_4
    iget-char v7, v0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v10, 0x22

    if-eq v7, v10, :cond_5

    iget-char v7, v0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v10, 0x27

    if-ne v7, v10, :cond_3

    .line 4881
    :cond_5
    iget-char v7, v0, Lo/isRated$extraCallback;->asInterface:C

    .line 4882
    :cond_6
    iget v10, v0, Lo/isRated$extraCallback;->onPostMessage:I

    iget v11, v0, Lo/isRated$extraCallback;->onMessageChannelReady:I

    if-ge v10, v11, :cond_3

    iget-object v10, v0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    iget v11, v0, Lo/isRated$extraCallback;->onPostMessage:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    iput-char v10, v0, Lo/isRated$extraCallback;->asInterface:C

    if-ne v10, v7, :cond_6

    goto :goto_2

    .line 4886
    :cond_7
    iput v6, v0, Lo/isRated$extraCallback;->onPostMessage:I

    .line 4887
    iput-char v9, v0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v8, 0xd

    :goto_3
    move v6, v8

    goto :goto_4

    .line 3828
    :cond_8
    iget-char v7, v0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v9, 0x26

    if-ne v7, v9, :cond_b

    .line 4929
    :cond_9
    iget v6, v0, Lo/isRated$extraCallback;->onPostMessage:I

    iget v7, v0, Lo/isRated$extraCallback;->onMessageChannelReady:I

    if-ge v6, v7, :cond_a

    iget-object v6, v0, Lo/isRated$extraCallback;->ICustomTabsCallback:Ljava/lang/CharSequence;

    iget v7, v0, Lo/isRated$extraCallback;->onPostMessage:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v0, Lo/isRated$extraCallback;->onPostMessage:I

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iput-char v6, v0, Lo/isRated$extraCallback;->asInterface:C

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_9

    :cond_a
    const/16 v6, 0xc

    :cond_b
    :goto_4
    if-eqz v6, :cond_d

    if-eq v6, v2, :cond_c

    const/4 v7, 0x2

    if-eq v6, v7, :cond_c

    const/16 v7, 0x9

    if-eq v6, v7, :cond_0

    packed-switch v6, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    add-int/lit8 v5, v5, -0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v5, v5, 0x1

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_c
    if-nez v5, :cond_e

    return v2

    :cond_d
    if-nez v5, :cond_e

    return v1

    :cond_e
    :goto_5
    move v3, v5

    goto/16 :goto_0

    :cond_f
    if-eqz v3, :cond_12

    if-eqz v4, :cond_10

    return v4

    .line 3706
    :cond_10
    :goto_6
    iget v4, v0, Lo/isRated$extraCallback;->onPostMessage:I

    if-lez v4, :cond_12

    .line 3707
    invoke-virtual {v0}, Lo/isRated$extraCallback;->ICustomTabsCallback()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_6

    :pswitch_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :pswitch_4
    if-ne v3, v5, :cond_11

    return v2

    :pswitch_5
    if-ne v3, v5, :cond_11

    return v1

    :cond_11
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_12
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static onMessageChannelReady(Ljava/lang/CharSequence;)I
    .locals 7

    .line 541
    new-instance v0, Lo/isRated$extraCallback;

    invoke-direct {v0, p0}, Lo/isRated$extraCallback;-><init>(Ljava/lang/CharSequence;)V

    .line 2744
    iget p0, v0, Lo/isRated$extraCallback;->onMessageChannelReady:I

    iput p0, v0, Lo/isRated$extraCallback;->onPostMessage:I

    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2747
    :cond_0
    :goto_0
    iget v3, v0, Lo/isRated$extraCallback;->onPostMessage:I

    if-lez v3, :cond_6

    .line 2748
    invoke-virtual {v0}, Lo/isRated$extraCallback;->ICustomTabsCallback()B

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/16 v6, 0x9

    if-eq v3, v6, :cond_0

    packed-switch v3, :pswitch_data_0

    if-nez v2, :cond_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    if-ne v2, v1, :cond_1

    return v5

    :pswitch_2
    if-ne v2, v1, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return v5

    :cond_3
    if-nez v2, :cond_0

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    return v4

    :cond_5
    if-nez v2, :cond_0

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_6
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static onPostMessage(Ljava/util/Locale;)Z
    .locals 1

    .line 516
    invoke-static {p0}, Lo/fromRating;->onPostMessage(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
