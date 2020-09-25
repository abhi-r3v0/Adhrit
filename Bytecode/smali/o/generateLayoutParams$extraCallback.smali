.class public final enum Lo/generateLayoutParams$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/generateLayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/generateLayoutParams$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/generateLayoutParams$extraCallback;

.field public static final enum extraCallback:Lo/generateLayoutParams$extraCallback;

.field public static final enum onNavigationEvent:Lo/generateLayoutParams$extraCallback;

.field private static final synthetic onPostMessage:[Lo/generateLayoutParams$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lo/generateLayoutParams$extraCallback;

    const/4 v1, 0x0

    const-string v2, "BUTT"

    invoke-direct {v0, v2, v1}, Lo/generateLayoutParams$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/generateLayoutParams$extraCallback;->extraCallback:Lo/generateLayoutParams$extraCallback;

    .line 19
    new-instance v0, Lo/generateLayoutParams$extraCallback;

    const/4 v2, 0x1

    const-string v3, "ROUND"

    invoke-direct {v0, v3, v2}, Lo/generateLayoutParams$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/generateLayoutParams$extraCallback;->ICustomTabsCallback:Lo/generateLayoutParams$extraCallback;

    .line 20
    new-instance v0, Lo/generateLayoutParams$extraCallback;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3}, Lo/generateLayoutParams$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/generateLayoutParams$extraCallback;->onNavigationEvent:Lo/generateLayoutParams$extraCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/generateLayoutParams$extraCallback;

    .line 17
    sget-object v5, Lo/generateLayoutParams$extraCallback;->extraCallback:Lo/generateLayoutParams$extraCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/generateLayoutParams$extraCallback;->ICustomTabsCallback:Lo/generateLayoutParams$extraCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/generateLayoutParams$extraCallback;->onPostMessage:[Lo/generateLayoutParams$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/generateLayoutParams$extraCallback;
    .locals 1

    .line 17
    const-class v0, Lo/generateLayoutParams$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/generateLayoutParams$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/generateLayoutParams$extraCallback;
    .locals 1

    .line 17
    sget-object v0, Lo/generateLayoutParams$extraCallback;->onPostMessage:[Lo/generateLayoutParams$extraCallback;

    invoke-virtual {v0}, [Lo/generateLayoutParams$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/generateLayoutParams$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()Landroid/graphics/Paint$Cap;
    .locals 2

    .line 23
    sget-object v0, Lo/generateLayoutParams$1;->onMessageChannelReady:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 30
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 27
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 25
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0
.end method
