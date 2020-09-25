.class public abstract Lo/CoreComponentFactory;
.super Lo/setConstraintSet;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setConstraintSet;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/currentHashLength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lo/CoreComponentFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/appendKey;->onMessageChannelReady(Ljava/lang/String;)Lo/currentHashLength;

    move-result-object v0

    sput-object v0, Lo/CoreComponentFactory;->ICustomTabsCallback:Lo/currentHashLength;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/setConstraintSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady([BLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1045
    invoke-static {}, Lo/getExtraData;->onNavigationEvent()Lo/getExtraData;

    move-result-object v1

    .line 1099
    iget-object v1, v1, Lo/getExtraData;->onNavigationEvent:Ljava/util/Map;

    .line 1045
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1046
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1047
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;

    .line 2015
    iget-object v4, v3, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setMinHeight;

    .line 1048
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setStatusBarBackgroundColor;

    if-eqz v4, :cond_0

    .line 2019
    iget v3, v3, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->onNavigationEvent:I

    shl-int/lit8 v3, v3, 0x3

    .line 2094
    iput v3, v4, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    goto :goto_1

    .line 1052
    :cond_0
    new-instance v4, Lo/setStatusBarBackgroundColor;

    invoke-direct {v4}, Lo/setStatusBarBackgroundColor;-><init>()V

    .line 2207
    iput-boolean v0, v4, Lo/setStatusBarBackgroundColor;->ICustomTabsCallback$Stub:Z

    .line 3019
    iget v3, v3, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->onNavigationEvent:I

    shl-int/lit8 v3, v3, 0x3

    .line 3094
    iput v3, v4, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    .line 1056
    :goto_1
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1059
    :cond_1
    invoke-static {}, Lo/getExtraData;->onNavigationEvent()Lo/getExtraData;

    move-result-object p2

    .line 4090
    iget-object p2, p2, Lo/getExtraData;->ICustomTabsCallback:Ljava/util/Map;

    .line 1059
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    .line 74
    :cond_2
    new-instance p2, Lo/updateServerCache;

    invoke-direct {p2, p1}, Lo/updateServerCache;-><init>([B)V

    .line 75
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 76
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setStatusBarBackgroundColor;

    .line 4197
    iget-boolean v2, v1, Lo/setStatusBarBackgroundColor;->ICustomTabsCallback$Stub:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 5084
    iget v1, v1, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    .line 5091
    iget v2, p2, Lo/updateServerCache;->onMessageChannelReady:I

    add-int/2addr v2, v1

    iput v2, p2, Lo/updateServerCache;->onMessageChannelReady:I

    .line 5092
    iget v1, p2, Lo/updateServerCache;->onMessageChannelReady:I

    if-gez v1, :cond_3

    .line 5093
    iput v3, p2, Lo/updateServerCache;->onMessageChannelReady:I

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 6121
    iget-object v4, v1, Lo/setStatusBarBackgroundColor;->onNavigationEvent:Ljava/lang/reflect/Field;

    .line 6080
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 6082
    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6083
    invoke-static {v1, p2}, Lo/extraCallback;->onPostMessage(Lo/setStatusBarBackgroundColor;Lo/updateServerCache;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3

    .line 6084
    :cond_5
    const-class v5, Ljava/lang/Float;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7139
    iget-object v2, v1, Lo/setStatusBarBackgroundColor;->extraCallback:Ljava/lang/String;

    const-string v3, "BCD_Format"

    .line 7110
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8084
    iget v2, v1, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    .line 7111
    invoke-virtual {p2, v2}, Lo/updateServerCache;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_3

    .line 7113
    :cond_6
    invoke-static {v1, p2}, Lo/extraCallback;->onPostMessage(Lo/setStatusBarBackgroundColor;Lo/updateServerCache;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_3

    .line 6086
    :cond_7
    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 9112
    iget-boolean v2, v1, Lo/setStatusBarBackgroundColor;->ICustomTabsCallback:Z

    if-eqz v2, :cond_8

    .line 10084
    iget v2, v1, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    .line 8151
    invoke-virtual {p2, v2}, Lo/updateServerCache;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 11084
    :cond_8
    iget v2, v1, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    .line 11340
    sget-object v3, Lo/updateServerCache;->onPostMessage:Ljava/nio/charset/Charset;

    .line 11353
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lo/updateServerCache;->onMessageChannelReady(I)[B

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8153
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 6088
    :cond_9
    const-class v5, Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 12130
    iget v2, v1, Lo/setStatusBarBackgroundColor;->onMessageChannelReady:I

    if-ne v2, v0, :cond_a

    .line 13084
    iget v2, v1, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    .line 13139
    iget-object v3, v1, Lo/setStatusBarBackgroundColor;->extraCallback:Ljava/lang/String;

    .line 12048
    invoke-virtual {p2, v2, v3, v0}, Lo/updateServerCache;->onPostMessage(ILjava/lang/String;Z)Ljava/util/Date;

    move-result-object v2

    goto :goto_3

    .line 14084
    :cond_a
    iget v2, v1, Lo/setStatusBarBackgroundColor;->onPostMessage:I

    .line 14139
    iget-object v4, v1, Lo/setStatusBarBackgroundColor;->extraCallback:Ljava/lang/String;

    .line 14231
    invoke-virtual {p2, v2, v4, v3}, Lo/updateServerCache;->onPostMessage(ILjava/lang/String;Z)Ljava/util/Date;

    move-result-object v2

    goto :goto_3

    .line 6090
    :cond_b
    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 15328
    invoke-virtual {p2, v0}, Lo/updateServerCache;->ICustomTabsCallback(I)J

    move-result-wide v4

    long-to-int v2, v4

    if-ne v2, v0, :cond_c

    const/4 v3, 0x1

    .line 6091
    :cond_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3

    .line 6092
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 6093
    invoke-static {v1, p2}, Lo/extraCallback;->ICustomTabsCallback(Lo/setStatusBarBackgroundColor;Lo/updateServerCache;)Lo/setContentId;

    move-result-object v2

    .line 16121
    :cond_e
    :goto_3
    iget-object v1, v1, Lo/setStatusBarBackgroundColor;->onNavigationEvent:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    .line 17100
    :try_start_0
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    .line 17104
    sget-object v3, Lo/CoreComponentFactory;->ICustomTabsCallback:Lo/currentHashLength;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Impossible to set the Field :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lo/currentHashLength;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    .line 17102
    sget-object v2, Lo/CoreComponentFactory;->ICustomTabsCallback:Lo/currentHashLength;

    const-string v3, "Parameters of fied.set are not valid"

    invoke-interface {v2, v3, v1}, Lo/currentHashLength;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_f
    return-void
.end method
