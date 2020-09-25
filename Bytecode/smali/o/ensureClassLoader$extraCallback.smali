.class public final enum Lo/ensureClassLoader$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/ensureClassLoader$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/ensureClassLoader$extraCallback;

.field public static final enum extraCallback:Lo/ensureClassLoader$extraCallback;

.field private static final synthetic onMessageChannelReady:[Lo/ensureClassLoader$extraCallback;

.field public static final enum onPostMessage:Lo/ensureClassLoader$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 103
    new-instance v0, Lo/ensureClassLoader$extraCallback;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lo/ensureClassLoader$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ensureClassLoader$extraCallback;->onPostMessage:Lo/ensureClassLoader$extraCallback;

    .line 107
    new-instance v0, Lo/ensureClassLoader$extraCallback;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lo/ensureClassLoader$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ensureClassLoader$extraCallback;->extraCallback:Lo/ensureClassLoader$extraCallback;

    .line 111
    new-instance v0, Lo/ensureClassLoader$extraCallback;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Lo/ensureClassLoader$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ensureClassLoader$extraCallback;->ICustomTabsCallback:Lo/ensureClassLoader$extraCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/ensureClassLoader$extraCallback;

    .line 99
    sget-object v5, Lo/ensureClassLoader$extraCallback;->onPostMessage:Lo/ensureClassLoader$extraCallback;

    aput-object v5, v4, v1

    sget-object v1, Lo/ensureClassLoader$extraCallback;->extraCallback:Lo/ensureClassLoader$extraCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lo/ensureClassLoader$extraCallback;->onMessageChannelReady:[Lo/ensureClassLoader$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ensureClassLoader$extraCallback;
    .locals 1

    .line 99
    const-class v0, Lo/ensureClassLoader$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/ensureClassLoader$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/ensureClassLoader$extraCallback;
    .locals 1

    .line 99
    sget-object v0, Lo/ensureClassLoader$extraCallback;->onMessageChannelReady:[Lo/ensureClassLoader$extraCallback;

    invoke-virtual {v0}, [Lo/ensureClassLoader$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ensureClassLoader$extraCallback;

    return-object v0
.end method
