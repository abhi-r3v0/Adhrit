.class public final Lo/fixDrawable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fixDrawable$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "Lo/setCollapsible;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/setInternalImageTint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setInternalImageTint<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:Lo/setDefaultNavigationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDefaultNavigationIcon<",
            "Lo/setCollapsible;",
            "Lo/setCollapsible;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lo/setInternalImageTint;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;)Lo/setInternalImageTint;

    move-result-object v0

    sput-object v0, Lo/fixDrawable;->ICustomTabsCallback:Lo/setInternalImageTint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lo/fixDrawable;-><init>(Lo/setDefaultNavigationIcon;)V

    return-void
.end method

.method public constructor <init>(Lo/setDefaultNavigationIcon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDefaultNavigationIcon<",
            "Lo/setCollapsible;",
            "Lo/setCollapsible;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/fixDrawable;->onMessageChannelReady:Lo/setDefaultNavigationIcon;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 0

    .line 20
    check-cast p1, Lo/setCollapsible;

    .line 1047
    iget-object p2, p0, Lo/fixDrawable;->onMessageChannelReady:Lo/setDefaultNavigationIcon;

    if-eqz p2, :cond_1

    .line 1048
    invoke-virtual {p2, p1}, Lo/setDefaultNavigationIcon;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/setCollapsible;

    if-nez p2, :cond_0

    .line 1050
    iget-object p2, p0, Lo/fixDrawable;->onMessageChannelReady:Lo/setDefaultNavigationIcon;

    const/4 p3, 0x0

    .line 1064
    invoke-static {p1, p3, p3}, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->extraCallback(Ljava/lang/Object;II)Lo/setDefaultNavigationIcon$ICustomTabsCallback;

    move-result-object p3

    .line 1065
    iget-object p2, p2, Lo/setDefaultNavigationIcon;->ICustomTabsCallback:Lo/setAnimationStyle;

    invoke-virtual {p2, p3, p1}, Lo/setAnimationStyle;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 1054
    :cond_1
    :goto_0
    sget-object p2, Lo/fixDrawable;->ICustomTabsCallback:Lo/setInternalImageTint;

    .line 2027
    iget-object p3, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p3, p2}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p4, Lo/applyFrameworkTintUsingColorFilter;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p3, p2}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 2101
    :cond_2
    iget-object p2, p2, Lo/setInternalImageTint;->onMessageChannelReady:Ljava/lang/Object;

    .line 1054
    :goto_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 1055
    new-instance p3, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p4, Lo/setDropDownHorizontalOffset;

    invoke-direct {p4, p1, p2}, Lo/setDropDownHorizontalOffset;-><init>(Lo/setCollapsible;I)V

    invoke-direct {p3, p1, p4}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p3
.end method

.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
