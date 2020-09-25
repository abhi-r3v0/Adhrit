.class public Lo/getSpeed;
.super Lo/setMinAndMaxProgress;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setMinAndMaxProgress<",
        "Lo/getComposition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Lo/setMinAndMaxProgress;-><init>(Landroid/content/Context;)V

    .line 1055
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1075
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1078
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1079
    new-instance v1, Lo/cancelLoaderTask;

    invoke-direct {v1, v0}, Lo/cancelLoaderTask;-><init>(Landroid/content/res/Resources;)V

    const/4 v0, 0x0

    .line 1080
    invoke-static {v1, p1, v0}, Lo/resumeAnimation;->extraCallback(Lo/cancelLoaderTask;Landroid/content/Context;Landroid/util/AttributeSet;)Lo/cancelLoaderTask;

    move-result-object p1

    .line 1081
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1160
    iget v0, p1, Lo/cancelLoaderTask;->onPostMessage:F

    .line 1060
    invoke-virtual {p0, v0}, Lo/setMinAndMaxProgress;->setAspectRatio(F)V

    .line 1061
    invoke-virtual {p1}, Lo/cancelLoaderTask;->onPostMessage()Lo/getComposition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setMinAndMaxProgress;->setHierarchy(Lo/setMaxFrame;)V

    .line 1062
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1, p2}, Lo/setMinAndMaxProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2055
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 2075
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 2078
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2079
    new-instance v1, Lo/cancelLoaderTask;

    invoke-direct {v1, v0}, Lo/cancelLoaderTask;-><init>(Landroid/content/res/Resources;)V

    .line 2080
    invoke-static {v1, p1, p2}, Lo/resumeAnimation;->extraCallback(Lo/cancelLoaderTask;Landroid/content/Context;Landroid/util/AttributeSet;)Lo/cancelLoaderTask;

    move-result-object p1

    .line 2081
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 2160
    iget p2, p1, Lo/cancelLoaderTask;->onPostMessage:F

    .line 2060
    invoke-virtual {p0, p2}, Lo/setMinAndMaxProgress;->setAspectRatio(F)V

    .line 2061
    invoke-virtual {p1}, Lo/cancelLoaderTask;->onPostMessage()Lo/getComposition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setMinAndMaxProgress;->setHierarchy(Lo/setMaxFrame;)V

    .line 2062
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lo/setMinAndMaxProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3055
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 3075
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 3078
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 3079
    new-instance v0, Lo/cancelLoaderTask;

    invoke-direct {v0, p3}, Lo/cancelLoaderTask;-><init>(Landroid/content/res/Resources;)V

    .line 3080
    invoke-static {v0, p1, p2}, Lo/resumeAnimation;->extraCallback(Lo/cancelLoaderTask;Landroid/content/Context;Landroid/util/AttributeSet;)Lo/cancelLoaderTask;

    move-result-object p1

    .line 3081
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 3160
    iget p2, p1, Lo/cancelLoaderTask;->onPostMessage:F

    .line 3060
    invoke-virtual {p0, p2}, Lo/setMinAndMaxProgress;->setAspectRatio(F)V

    .line 3061
    invoke-virtual {p1}, Lo/cancelLoaderTask;->onPostMessage()Lo/getComposition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setMinAndMaxProgress;->setHierarchy(Lo/setMaxFrame;)V

    .line 3062
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method
