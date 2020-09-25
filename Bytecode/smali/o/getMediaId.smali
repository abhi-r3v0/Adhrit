.class public final Lo/getMediaId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMediaId$onNavigationEvent;,
        Lo/getMediaId$onPostMessage;
    }
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Lo/onLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onLayout<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/setTransitioning;

.field public final onNavigationEvent:Z

.field public final onPostMessage:Lo/startActionModeForChild;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7116
    invoke-static {}, Lo/isCrashed$onNavigationEvent;->values()[Lo/isCrashed$onNavigationEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/getMediaId;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    :try_start_0
    sget-object v1, Lo/isCrashed$onNavigationEvent;->LESS_THAN:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/getMediaId;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v1, Lo/isCrashed$onNavigationEvent;->LESS_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lo/getMediaId;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v1, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lo/getMediaId;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lo/getMediaId;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v1, Lo/isCrashed$onNavigationEvent;->GREATER_THAN:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lo/getMediaId;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    sget-object v1, Lo/isCrashed$onNavigationEvent;->GREATER_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/onLayout;Lo/startActionModeForChild;Lo/setTransitioning;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/onLayout<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lo/startActionModeForChild;",
            "Lo/setTransitioning;",
            "Z)V"
        }
    .end annotation

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-object p1, p0, Lo/getMediaId;->ICustomTabsCallback:Ljava/lang/String;

    .line 1023
    iput-object p2, p0, Lo/getMediaId;->extraCallback:Lo/onLayout;

    .line 1024
    iput-object p3, p0, Lo/getMediaId;->onPostMessage:Lo/startActionModeForChild;

    .line 1025
    iput-object p4, p0, Lo/getMediaId;->onMessageChannelReady:Lo/setTransitioning;

    .line 1026
    iput-boolean p5, p0, Lo/getMediaId;->onNavigationEvent:Z

    return-void
.end method

.method public static ICustomTabsCallback(Lo/invalidateSpanInfo;)Ljava/lang/String;
    .locals 2

    .line 5045
    :try_start_0
    instance-of v0, p0, Lo/ThreadUtil$BackgroundCallback;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "UTF-8"

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 5047
    :try_start_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/invalidateSpanInfo;

    .line 6058
    invoke-interface {p0}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lo/getIconBitmap$onNavigationEvent;->extraCallback([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7058
    :cond_0
    invoke-interface {p0}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lo/getIconBitmap$onNavigationEvent;->extraCallback([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5053
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static onMessageChannelReady(Lo/invalidateSpanInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/invalidateSpanInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2023
    :try_start_0
    instance-of v0, p0, Lo/ThreadUtil$BackgroundCallback;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "UTF-8"

    if-eqz v0, :cond_0

    .line 2025
    :try_start_1
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 2026
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2027
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/invalidateSpanInfo;

    .line 3058
    invoke-interface {v3}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lo/getIconBitmap$onNavigationEvent;->extraCallback([B)Ljava/lang/String;

    move-result-object v3

    .line 2027
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2030
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2031
    invoke-interface {p0}, Lo/invalidateSpanInfo;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 4058
    :cond_1
    invoke-interface {p0}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lo/getIconBitmap$onNavigationEvent;->extraCallback([B)Ljava/lang/String;

    move-result-object p0

    .line 2031
    :goto_1
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, v0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    .line 2036
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 1050
    new-instance v0, Lo/animateToVisibility;

    invoke-direct {v0, p1, p2, p0}, Lo/animateToVisibility;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/getMediaId;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RectangleShape{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getMediaId;->extraCallback:Lo/onLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/getMediaId;->onPostMessage:Lo/startActionModeForChild;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
