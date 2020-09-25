.class public final enum Lo/shouldDelayChildPressedState$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldDelayChildPressedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/shouldDelayChildPressedState$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lo/shouldDelayChildPressedState$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/shouldDelayChildPressedState$onPostMessage;

.field private static final synthetic onPostMessage:[Lo/shouldDelayChildPressedState$onPostMessage;


# instance fields
.field private final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lo/shouldDelayChildPressedState$onPostMessage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "STAR"

    invoke-direct {v0, v3, v1, v2}, Lo/shouldDelayChildPressedState$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/shouldDelayChildPressedState$onPostMessage;->onMessageChannelReady:Lo/shouldDelayChildPressedState$onPostMessage;

    .line 15
    new-instance v0, Lo/shouldDelayChildPressedState$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "POLYGON"

    invoke-direct {v0, v4, v2, v3}, Lo/shouldDelayChildPressedState$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/shouldDelayChildPressedState$onPostMessage;->extraCallback:Lo/shouldDelayChildPressedState$onPostMessage;

    new-array v3, v3, [Lo/shouldDelayChildPressedState$onPostMessage;

    .line 13
    sget-object v4, Lo/shouldDelayChildPressedState$onPostMessage;->onMessageChannelReady:Lo/shouldDelayChildPressedState$onPostMessage;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/shouldDelayChildPressedState$onPostMessage;->onPostMessage:[Lo/shouldDelayChildPressedState$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lo/shouldDelayChildPressedState$onPostMessage;->onNavigationEvent:I

    return-void
.end method

.method public static onMessageChannelReady(I)Lo/shouldDelayChildPressedState$onPostMessage;
    .locals 5

    .line 24
    invoke-static {}, Lo/shouldDelayChildPressedState$onPostMessage;->values()[Lo/shouldDelayChildPressedState$onPostMessage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 25
    iget v4, v3, Lo/shouldDelayChildPressedState$onPostMessage;->onNavigationEvent:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/shouldDelayChildPressedState$onPostMessage;
    .locals 1

    .line 13
    const-class v0, Lo/shouldDelayChildPressedState$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/shouldDelayChildPressedState$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/shouldDelayChildPressedState$onPostMessage;
    .locals 1

    .line 13
    sget-object v0, Lo/shouldDelayChildPressedState$onPostMessage;->onPostMessage:[Lo/shouldDelayChildPressedState$onPostMessage;

    invoke-virtual {v0}, [Lo/shouldDelayChildPressedState$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/shouldDelayChildPressedState$onPostMessage;

    return-object v0
.end method
