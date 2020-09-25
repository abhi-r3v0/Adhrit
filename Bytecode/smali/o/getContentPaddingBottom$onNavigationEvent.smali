.class public final Lo/getContentPaddingBottom$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentPaddingBottom;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/ShimmerLayout$Companion;",
        "",
        "()V",
        "DEFAULT_GRADIENT_VIEW_WIDTH",
        "",
        "DEFAULT_SHIMMER_VIEW_HEIGHT",
        "",
        "DEFAULT_SHIMMER_VIEW_WIDTH",
        "DURATION_MILLIS",
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
.field public ICustomTabsCallback:I

.field private final asBinder:Lo/getTranslateY;

.field private asInterface:I

.field public extraCallback:Z

.field private onMessageChannelReady:I

.field public onNavigationEvent:I

.field private onPostMessage:I

.field private onRelationshipValidationResult:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getTranslateY;)V
    .locals 0

    .line 1083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 1084
    check-cast p1, Lo/getTranslateY;

    iput-object p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asBinder:Lo/getTranslateY;

    const/4 p1, 0x0

    .line 1085
    iput p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onRelationshipValidationResult:I

    .line 1086
    iput p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onPostMessage:I

    .line 1087
    iput p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asInterface:I

    .line 1088
    iput p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onNavigationEvent:I

    .line 1089
    iput p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->ICustomTabsCallback:I

    .line 1090
    iput p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method private onMessageChannelReady(Ljava/io/InputStream;)Z
    .locals 11

    .line 3139
    iget v0, p0, Lo/getContentPaddingBottom$onNavigationEvent;->ICustomTabsCallback:I

    .line 3142
    :goto_0
    :try_start_0
    iget v1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-eq v1, v3, :cond_13

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_13

    .line 3143
    iget v5, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onRelationshipValidationResult:I

    add-int/2addr v5, v4

    iput v5, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onRelationshipValidationResult:I

    .line 3144
    iget-boolean v6, p0, Lo/getContentPaddingBottom$onNavigationEvent;->extraCallback:Z

    if-eqz v6, :cond_0

    .line 3147
    iput v3, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    .line 3148
    iput-boolean v2, p0, Lo/getContentPaddingBottom$onNavigationEvent;->extraCallback:Z

    return v2

    .line 3151
    :cond_0
    iget v6, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    const/16 v7, 0xff

    if-eqz v6, :cond_10

    const/16 v8, 0xd8

    const/4 v9, 0x2

    if-eq v6, v4, :cond_e

    const/4 v3, 0x3

    if-eq v6, v9, :cond_d

    const/4 v10, 0x4

    if-eq v6, v3, :cond_3

    const/4 v2, 0x5

    if-eq v6, v10, :cond_2

    if-ne v6, v2, :cond_1

    .line 3203
    iget v2, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onPostMessage:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    sub-int/2addr v2, v9

    int-to-long v3, v2

    .line 3209
    invoke-static {p1, v3, v4}, Lo/getIconBitmap$onPostMessage;->onNavigationEvent(Ljava/io/InputStream;J)J

    .line 3210
    iget v3, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onRelationshipValidationResult:I

    add-int/2addr v3, v2

    iput v3, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onRelationshipValidationResult:I

    .line 3211
    iput v9, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto/16 :goto_1

    .line 6162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 3199
    :cond_2
    iput v2, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto/16 :goto_1

    :cond_3
    if-ne v1, v7, :cond_4

    .line 3176
    iput v3, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    .line 3178
    iput v9, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_1

    :cond_5
    const/16 v3, 0xd9

    if-ne v1, v3, :cond_7

    .line 3180
    iput-boolean v4, p0, Lo/getContentPaddingBottom$onNavigationEvent;->extraCallback:Z

    add-int/lit8 v5, v5, -0x2

    .line 3242
    iget v2, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asInterface:I

    if-lez v2, :cond_6

    .line 3243
    iput v5, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onNavigationEvent:I

    .line 3245
    :cond_6
    iget v2, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asInterface:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asInterface:I

    iput v2, p0, Lo/getContentPaddingBottom$onNavigationEvent;->ICustomTabsCallback:I

    .line 3184
    iput v9, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_1

    :cond_7
    const/16 v6, 0xda

    if-ne v1, v6, :cond_9

    add-int/lit8 v5, v5, -0x2

    .line 4242
    iget v6, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asInterface:I

    if-lez v6, :cond_8

    .line 4243
    iput v5, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onNavigationEvent:I

    .line 4245
    :cond_8
    iget v5, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asInterface:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asInterface:I

    iput v5, p0, Lo/getContentPaddingBottom$onNavigationEvent;->ICustomTabsCallback:I

    :cond_9
    if-eq v1, v4, :cond_b

    const/16 v5, 0xd0

    if-lt v1, v5, :cond_a

    const/16 v5, 0xd7

    if-le v1, v5, :cond_b

    :cond_a
    if-eq v1, v3, :cond_b

    if-eq v1, v8, :cond_b

    const/4 v2, 0x1

    :cond_b
    if-eqz v2, :cond_c

    .line 3191
    iput v10, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_1

    .line 3193
    :cond_c
    iput v9, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_1

    :cond_d
    if-ne v1, v7, :cond_12

    .line 3170
    iput v3, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_1

    :cond_e
    if-ne v1, v8, :cond_f

    .line 3162
    iput v9, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_1

    .line 3164
    :cond_f
    iput v3, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_1

    :cond_10
    if-ne v1, v7, :cond_11

    .line 3154
    iput v4, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    goto :goto_1

    .line 3156
    :cond_11
    iput v3, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    .line 3219
    :cond_12
    :goto_1
    iput v1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onPostMessage:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3225
    :cond_13
    iget p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    if-eq p1, v3, :cond_14

    iget p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->ICustomTabsCallback:I

    if-eq p1, v0, :cond_14

    return v4

    :cond_14
    return v2

    :catch_0
    move-exception p1

    .line 7151
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 7152
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/getCardBackgroundColor;)Z
    .locals 3

    .line 2105
    iget v0, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 2109
    :cond_0
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v0

    .line 2114
    iget v2, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onRelationshipValidationResult:I

    if-gt v0, v2, :cond_1

    return v1

    .line 2118
    :cond_1
    new-instance v0, Lo/setAlpha;

    .line 2120
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object p1

    iget-object v1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asBinder:Lo/getTranslateY;

    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lo/getTranslateY;->extraCallback(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v2, p0, Lo/getContentPaddingBottom$onNavigationEvent;->asBinder:Lo/getTranslateY;

    invoke-direct {v0, p1, v1, v2}, Lo/setAlpha;-><init>(Ljava/io/InputStream;[BLo/setPageMargin;)V

    .line 2122
    :try_start_0
    iget p1, p0, Lo/getContentPaddingBottom$onNavigationEvent;->onRelationshipValidationResult:I

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lo/getIconBitmap$onPostMessage;->onNavigationEvent(Ljava/io/InputStream;J)J

    .line 2123
    invoke-direct {p0, v0}, Lo/getContentPaddingBottom$onNavigationEvent;->onMessageChannelReady(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    invoke-static {v0}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2151
    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 2152
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2129
    :goto_0
    invoke-static {v0}, Lo/getTrimPathStart;->onNavigationEvent(Ljava/io/InputStream;)V

    throw p1
.end method
