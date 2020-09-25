.class public final enum Lo/PlaybackStateCompat$CustomAction$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat$CustomAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/PlaybackStateCompat$CustomAction$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

.field public static final enum asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

.field public static final enum extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

.field public static final enum onNavigationEvent:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

.field public static final enum onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

.field private static final synthetic onRelationshipValidationResult:[Lo/PlaybackStateCompat$CustomAction$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 165
    new-instance v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "ENQUEUED"

    invoke-direct {v0, v2, v1}, Lo/PlaybackStateCompat$CustomAction$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 170
    new-instance v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lo/PlaybackStateCompat$CustomAction$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onNavigationEvent:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 177
    new-instance v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "SUCCEEDED"

    invoke-direct {v0, v4, v3}, Lo/PlaybackStateCompat$CustomAction$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 183
    new-instance v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "FAILED"

    invoke-direct {v0, v5, v4}, Lo/PlaybackStateCompat$CustomAction$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 189
    new-instance v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "BLOCKED"

    invoke-direct {v0, v6, v5}, Lo/PlaybackStateCompat$CustomAction$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 195
    new-instance v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "CANCELLED"

    invoke-direct {v0, v7, v6}, Lo/PlaybackStateCompat$CustomAction$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v7, 0x6

    new-array v7, v7, [Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 159
    sget-object v8, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    aput-object v8, v7, v1

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onNavigationEvent:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    aput-object v1, v7, v2

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    aput-object v1, v7, v3

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    aput-object v1, v7, v4

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onRelationshipValidationResult:[Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;
    .locals 1

    .line 159
    const-class v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/PlaybackStateCompat$CustomAction$onPostMessage;
    .locals 1

    .line 159
    sget-object v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onRelationshipValidationResult:[Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-virtual {v0}, [Lo/PlaybackStateCompat$CustomAction$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    return-object v0
.end method
