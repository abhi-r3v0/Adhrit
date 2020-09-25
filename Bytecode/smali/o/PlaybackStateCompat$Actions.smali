.class public final enum Lo/PlaybackStateCompat$Actions;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/PlaybackStateCompat$Actions;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

.field private static final synthetic extraCallback:[Lo/PlaybackStateCompat$Actions;

.field public static final enum onMessageChannelReady:Lo/PlaybackStateCompat$Actions;

.field public static final enum onNavigationEvent:Lo/PlaybackStateCompat$Actions;

.field public static final enum onPostMessage:Lo/PlaybackStateCompat$Actions;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lo/PlaybackStateCompat$Actions;

    const/4 v1, 0x0

    const-string v2, "REPLACE"

    invoke-direct {v0, v2, v1}, Lo/PlaybackStateCompat$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$Actions;->onPostMessage:Lo/PlaybackStateCompat$Actions;

    .line 36
    new-instance v0, Lo/PlaybackStateCompat$Actions;

    const/4 v2, 0x1

    const-string v3, "KEEP"

    invoke-direct {v0, v3, v2}, Lo/PlaybackStateCompat$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$Actions;->ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

    .line 47
    new-instance v0, Lo/PlaybackStateCompat$Actions;

    const/4 v3, 0x2

    const-string v4, "APPEND"

    invoke-direct {v0, v4, v3}, Lo/PlaybackStateCompat$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$Actions;->onNavigationEvent:Lo/PlaybackStateCompat$Actions;

    .line 57
    new-instance v0, Lo/PlaybackStateCompat$Actions;

    const/4 v4, 0x3

    const-string v5, "APPEND_OR_REPLACE"

    invoke-direct {v0, v5, v4}, Lo/PlaybackStateCompat$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$Actions;->onMessageChannelReady:Lo/PlaybackStateCompat$Actions;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/PlaybackStateCompat$Actions;

    .line 24
    sget-object v6, Lo/PlaybackStateCompat$Actions;->onPostMessage:Lo/PlaybackStateCompat$Actions;

    aput-object v6, v5, v1

    sget-object v1, Lo/PlaybackStateCompat$Actions;->ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

    aput-object v1, v5, v2

    sget-object v1, Lo/PlaybackStateCompat$Actions;->onNavigationEvent:Lo/PlaybackStateCompat$Actions;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/PlaybackStateCompat$Actions;->extraCallback:[Lo/PlaybackStateCompat$Actions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/PlaybackStateCompat$Actions;
    .locals 1

    .line 24
    const-class v0, Lo/PlaybackStateCompat$Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/PlaybackStateCompat$Actions;

    return-object p0
.end method

.method public static values()[Lo/PlaybackStateCompat$Actions;
    .locals 1

    .line 24
    sget-object v0, Lo/PlaybackStateCompat$Actions;->extraCallback:[Lo/PlaybackStateCompat$Actions;

    invoke-virtual {v0}, [Lo/PlaybackStateCompat$Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/PlaybackStateCompat$Actions;

    return-object v0
.end method
