.class final Lo/setDefaultNavigationContentDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDefaultNavigationContentDescription$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setNavigationContentDescription<",
            "TModel;TData;>;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lo/RatingCompat$StarStyle$extraCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setNavigationContentDescription<",
            "TModel;TData;>;>;",
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/setDefaultNavigationContentDescription;->ICustomTabsCallback:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lo/setDefaultNavigationContentDescription;->extraCallback:Lo/RatingCompat$StarStyle$extraCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")",
            "Lo/setNavigationContentDescription$ICustomTabsCallback<",
            "TData;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/setDefaultNavigationContentDescription;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 47
    iget-object v5, p0, Lo/setDefaultNavigationContentDescription;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setNavigationContentDescription;

    .line 48
    invoke-interface {v5, p1}, Lo/setNavigationContentDescription;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    invoke-interface {v5, p1, p2, p3, p4}, Lo/setNavigationContentDescription;->extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 51
    iget-object v4, v5, Lo/setNavigationContentDescription$ICustomTabsCallback;->onMessageChannelReady:Lo/AppCompatImageHelper;

    .line 52
    iget-object v5, v5, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v4, :cond_2

    .line 57
    new-instance p1, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p2, Lo/setDefaultNavigationContentDescription$onPostMessage;

    iget-object p3, p0, Lo/setDefaultNavigationContentDescription;->extraCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-direct {p2, v1, p3}, Lo/setDefaultNavigationContentDescription$onPostMessage;-><init>(Ljava/util/List;Lo/RatingCompat$StarStyle$extraCallback;)V

    invoke-direct {p1, v4, p2}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p1

    :cond_2
    return-object v2
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lo/setDefaultNavigationContentDescription;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setNavigationContentDescription;

    .line 64
    invoke-interface {v1, p1}, Lo/setNavigationContentDescription;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiModelLoader{modelLoaders="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setDefaultNavigationContentDescription;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
