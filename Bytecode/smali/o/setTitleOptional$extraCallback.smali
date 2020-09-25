.class public final enum Lo/setTitleOptional$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTitleOptional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setTitleOptional$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setTitleOptional$extraCallback;

.field private static final synthetic asInterface:[Lo/setTitleOptional$extraCallback;

.field public static final enum extraCallback:Lo/setTitleOptional$extraCallback;

.field public static final enum onMessageChannelReady:Lo/setTitleOptional$extraCallback;

.field public static final enum onNavigationEvent:Lo/setTitleOptional$extraCallback;

.field public static final enum onPostMessage:Lo/setTitleOptional$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lo/setTitleOptional$extraCallback;

    const/4 v1, 0x0

    const-string v2, "MERGE"

    invoke-direct {v0, v2, v1}, Lo/setTitleOptional$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTitleOptional$extraCallback;->onMessageChannelReady:Lo/setTitleOptional$extraCallback;

    .line 16
    new-instance v0, Lo/setTitleOptional$extraCallback;

    const/4 v2, 0x1

    const-string v3, "ADD"

    invoke-direct {v0, v3, v2}, Lo/setTitleOptional$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTitleOptional$extraCallback;->extraCallback:Lo/setTitleOptional$extraCallback;

    .line 17
    new-instance v0, Lo/setTitleOptional$extraCallback;

    const/4 v3, 0x2

    const-string v4, "SUBTRACT"

    invoke-direct {v0, v4, v3}, Lo/setTitleOptional$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTitleOptional$extraCallback;->onPostMessage:Lo/setTitleOptional$extraCallback;

    .line 18
    new-instance v0, Lo/setTitleOptional$extraCallback;

    const/4 v4, 0x3

    const-string v5, "INTERSECT"

    invoke-direct {v0, v5, v4}, Lo/setTitleOptional$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTitleOptional$extraCallback;->onNavigationEvent:Lo/setTitleOptional$extraCallback;

    .line 19
    new-instance v0, Lo/setTitleOptional$extraCallback;

    const/4 v5, 0x4

    const-string v6, "EXCLUDE_INTERSECTIONS"

    invoke-direct {v0, v6, v5}, Lo/setTitleOptional$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/setTitleOptional$extraCallback;->ICustomTabsCallback:Lo/setTitleOptional$extraCallback;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/setTitleOptional$extraCallback;

    .line 14
    sget-object v7, Lo/setTitleOptional$extraCallback;->onMessageChannelReady:Lo/setTitleOptional$extraCallback;

    aput-object v7, v6, v1

    sget-object v1, Lo/setTitleOptional$extraCallback;->extraCallback:Lo/setTitleOptional$extraCallback;

    aput-object v1, v6, v2

    sget-object v1, Lo/setTitleOptional$extraCallback;->onPostMessage:Lo/setTitleOptional$extraCallback;

    aput-object v1, v6, v3

    sget-object v1, Lo/setTitleOptional$extraCallback;->onNavigationEvent:Lo/setTitleOptional$extraCallback;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/setTitleOptional$extraCallback;->asInterface:[Lo/setTitleOptional$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static onNavigationEvent(I)Lo/setTitleOptional$extraCallback;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 34
    sget-object p0, Lo/setTitleOptional$extraCallback;->onMessageChannelReady:Lo/setTitleOptional$extraCallback;

    return-object p0

    .line 32
    :cond_0
    sget-object p0, Lo/setTitleOptional$extraCallback;->ICustomTabsCallback:Lo/setTitleOptional$extraCallback;

    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lo/setTitleOptional$extraCallback;->onNavigationEvent:Lo/setTitleOptional$extraCallback;

    return-object p0

    .line 28
    :cond_2
    sget-object p0, Lo/setTitleOptional$extraCallback;->onPostMessage:Lo/setTitleOptional$extraCallback;

    return-object p0

    .line 26
    :cond_3
    sget-object p0, Lo/setTitleOptional$extraCallback;->extraCallback:Lo/setTitleOptional$extraCallback;

    return-object p0

    .line 24
    :cond_4
    sget-object p0, Lo/setTitleOptional$extraCallback;->onMessageChannelReady:Lo/setTitleOptional$extraCallback;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setTitleOptional$extraCallback;
    .locals 1

    .line 14
    const-class v0, Lo/setTitleOptional$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setTitleOptional$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/setTitleOptional$extraCallback;
    .locals 1

    .line 14
    sget-object v0, Lo/setTitleOptional$extraCallback;->asInterface:[Lo/setTitleOptional$extraCallback;

    invoke-virtual {v0}, [Lo/setTitleOptional$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setTitleOptional$extraCallback;

    return-object v0
.end method
