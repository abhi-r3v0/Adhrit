.class public final enum Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaBrowserCompat$ServiceBinderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field public static final enum ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field public static final enum asBinder:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field public static final enum asInterface:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field public static final enum extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field public static final enum onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field public static final enum onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field public static final enum onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field private static final synthetic onRelationshipValidationResult:[Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field public static final enum onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 36
    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/4 v2, 0x1

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v2}, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/4 v3, 0x2

    const-string v4, "TOP"

    invoke-direct {v0, v4, v3}, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/4 v4, 0x3

    const-string v5, "RIGHT"

    invoke-direct {v0, v5, v4}, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/4 v5, 0x4

    const-string v6, "BOTTOM"

    invoke-direct {v0, v6, v5}, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/4 v6, 0x5

    const-string v7, "BASELINE"

    invoke-direct {v0, v7, v6}, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/4 v7, 0x6

    const-string v8, "CENTER"

    invoke-direct {v0, v8, v7}, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asInterface:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/4 v8, 0x7

    const-string v9, "CENTER_X"

    invoke-direct {v0, v9, v8}, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asBinder:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    new-instance v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/16 v9, 0x8

    const-string v10, "CENTER_Y"

    invoke-direct {v0, v10, v9}, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/16 v10, 0x9

    new-array v10, v10, [Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v11, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    aput-object v11, v10, v1

    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    aput-object v1, v10, v2

    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    aput-object v1, v10, v3

    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    aput-object v1, v10, v4

    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    aput-object v1, v10, v5

    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    aput-object v1, v10, v6

    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asInterface:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    aput-object v1, v10, v7

    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asBinder:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onRelationshipValidationResult:[Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;
    .locals 1

    .line 36
    const-class v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;
    .locals 1

    .line 36
    sget-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onRelationshipValidationResult:[Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v0}, [Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    return-object v0
.end method
