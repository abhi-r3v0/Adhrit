.class final Lo/LifestyleComponentAssetJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/LifestyleComponentAsset;


# direct methods
.method constructor <init>(Lo/LifestyleComponentAsset;)V
    .locals 0

    iput-object p1, p0, Lo/LifestyleComponentAssetJsonAdapter;->ICustomTabsCallback:Lo/LifestyleComponentAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/LifestyleComponentAssetJsonAdapter;->ICustomTabsCallback:Lo/LifestyleComponentAsset;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lo/LifestyleComponentAsset;->ICustomTabsCallback(Lo/LifestyleComponentAsset;I)V

    return-void
.end method
