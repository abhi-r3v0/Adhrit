.class public final Lo/getRating;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onChooseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRating$onMessageChannelReady;,
        Lo/getRating$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final synthetic zzel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6001
    invoke-static {}, Lo/onCreateLoader;->values()[Lo/onCreateLoader;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getRating;->zzel:[I

    :try_start_0
    sget-object v1, Lo/onCreateLoader;->onNavigationEvent:Lo/onCreateLoader;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/getRating;->zzel:[I

    sget-object v1, Lo/onCreateLoader;->extraCallback:Lo/onCreateLoader;

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

    .line 3010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 3

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 74
    invoke-static {p0}, Lo/getRating;->onMessageChannelReady(Ljava/lang/String;)[Lo/getRating$onMessageChannelReady;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    invoke-static {v1, v0}, Lo/getRating$onMessageChannelReady;->onMessageChannelReady([Lo/getRating$onMessageChannelReady;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Error in parsing "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extraCallback(Ljava/lang/String;)[F
    .locals 13

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    goto/16 :goto_5

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 220
    new-instance v2, Lo/getRating$ICustomTabsCallback;

    invoke-direct {v2}, Lo/getRating$ICustomTabsCallback;-><init>()V

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    .line 2260
    iput-boolean v0, v2, Lo/getRating$ICustomTabsCallback;->extraCallback:Z

    move v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2263
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v7, v11, :cond_5

    .line 2266
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_4

    const/16 v12, 0x45

    if-eq v11, v12, :cond_3

    const/16 v12, 0x65

    if-eq v11, v12, :cond_3

    packed-switch v11, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-nez v9, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_4

    .line 2285
    :cond_1
    iput-boolean v4, v2, Lo/getRating$ICustomTabsCallback;->extraCallback:Z

    goto :goto_3

    :pswitch_1
    if-eq v7, v5, :cond_2

    if-nez v8, :cond_2

    .line 2276
    iput-boolean v4, v2, Lo/getRating$ICustomTabsCallback;->extraCallback:Z

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto :goto_4

    :cond_3
    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    :pswitch_2
    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_4
    if-nez v10, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2299
    :cond_5
    iput v7, v2, Lo/getRating$ICustomTabsCallback;->onPostMessage:I

    .line 228
    iget v7, v2, Lo/getRating$ICustomTabsCallback;->onPostMessage:I

    if-ge v5, v7, :cond_6

    add-int/lit8 v8, v6, 0x1

    .line 232
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v1, v6

    move v6, v8

    .line 235
    :cond_6
    iget-boolean v5, v2, Lo/getRating$ICustomTabsCallback;->extraCallback:Z

    if-eqz v5, :cond_7

    move v5, v7

    goto :goto_0

    :cond_7
    add-int/lit8 v5, v7, 0x1

    goto :goto_0

    .line 242
    :cond_8
    invoke-static {v1, v6}, Lo/getRating;->extraCallback([FI)[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error in parsing \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    :goto_5
    new-array p0, v0, [F

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static extraCallback([FI)[F
    .locals 2

    if-ltz p1, :cond_1

    .line 57
    array-length v0, p0

    if-ltz v0, :cond_0

    .line 62
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    new-array p1, p1, [F

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;I)I
    .locals 3

    .line 174
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int v1, v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)[Lo/getRating$onMessageChannelReady;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 99
    invoke-static {p0, v3}, Lo/getRating;->onMessageChannelReady(Ljava/lang/String;I)I

    move-result v3

    .line 100
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 102
    invoke-static {v4}, Lo/getRating;->extraCallback(Ljava/lang/String;)[F

    move-result-object v5

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1190
    new-instance v6, Lo/getRating$onMessageChannelReady;

    invoke-direct {v6, v4, v5}, Lo/getRating$onMessageChannelReady;-><init>(C[F)V

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v3, 0x1

    move v7, v4

    move v4, v3

    move v3, v7

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_3

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 110
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    .line 2190
    new-instance v2, Lo/getRating$onMessageChannelReady;

    invoke-direct {v2, p0, v1}, Lo/getRating$onMessageChannelReady;-><init>(C[F)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    new-array p0, p0, [Lo/getRating$onMessageChannelReady;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lo/getRating$onMessageChannelReady;

    return-object p0
.end method

.method public static onPostMessage([Lo/getRating$onMessageChannelReady;[Lo/getRating$onMessageChannelReady;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 141
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 145
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 146
    aget-object v2, p0, v1

    iget-char v2, v2, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    aget-object v3, p1, v1

    iget-char v3, v3, Lo/getRating$onMessageChannelReady;->ICustomTabsCallback:C

    if-ne v2, v3, :cond_3

    aget-object v2, p0, v1

    iget-object v2, v2, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Lo/getRating$onMessageChannelReady;->onNavigationEvent:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static onPostMessage([Lo/getRating$onMessageChannelReady;)[Lo/getRating$onMessageChannelReady;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lo/getRating$onMessageChannelReady;

    const/4 v1, 0x0

    .line 124
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 125
    new-instance v2, Lo/getRating$onMessageChannelReady;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lo/getRating$onMessageChannelReady;-><init>(Lo/getRating$onMessageChannelReady;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityChooserView;",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;)V"
        }
    .end annotation

    .line 4481
    iget-object v0, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onNavigationEvent()I

    move-result v0

    .line 4489
    iget-object v1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4012
    invoke-virtual {p1}, Lo/ActivityChooserView;->getInterfaceDescriptor()I

    move-result p1

    sub-int/2addr v0, p1

    .line 3014
    div-int/lit8 v0, v0, 0x2

    .line 3016
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/databinding/ViewDataBinding$4;

    .line 5015
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$4;->extraCallback:Landroid/graphics/Rect;

    .line 3018
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 3019
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    return-void
.end method
