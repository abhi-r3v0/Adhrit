.class public final Lo/access$202;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile ICustomTabsCallback:Lo/dM;

.field private static final onMessageChannelReady:Lo/dM;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lo/FreshchatImageLoaderRequest$TransformType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/FreshchatImageLoaderRequest$TransformType;-><init>(Lo/FreshchatImageLoaderRequest$a;)V

    .line 3
    sput-object v0, Lo/access$202;->onMessageChannelReady:Lo/dM;

    sput-object v0, Lo/access$202;->ICustomTabsCallback:Lo/dM;

    return-void
.end method

.method public static onMessageChannelReady()Lo/dM;
    .locals 1

    .line 1
    sget-object v0, Lo/access$202;->ICustomTabsCallback:Lo/dM;

    return-object v0
.end method
