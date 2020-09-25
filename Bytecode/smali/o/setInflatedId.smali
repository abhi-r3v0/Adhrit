.class public Lo/setInflatedId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/exceptionStacktrace;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerReducer;",
        "",
        "()V",
        "reduce",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerViewState;",
        "gameData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerDataModel;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field public final onNavigationEvent:Ljava/util/zip/Deflater;

.field private final onPostMessage:Lo/filtersNodes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/exceptionStacktrace;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 21044
    invoke-static {p1}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lo/setInflatedId;-><init>(Lo/filtersNodes;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method public constructor <init>(Lo/filtersNodes;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 21052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 21055
    iput-object p1, p0, Lo/setInflatedId;->onPostMessage:Lo/filtersNodes;

    .line 21056
    iput-object p2, p0, Lo/setInflatedId;->onNavigationEvent:Ljava/util/zip/Deflater;

    return-void

    .line 21054
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21053
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$removeSpacesAndHyphens"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    check-cast p0, Ljava/lang/CharSequence;

    new-instance v0, Lo/queryForTag;

    const-string v1, "\\s|-"

    invoke-direct {v0, v1}, Lo/queryForTag;-><init>(Ljava/lang/String;)V

    const-string v1, "input"

    invoke-static {p0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "replacement"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8143
    iget-object v0, v0, Lo/queryForTag;->onPostMessage:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final ICustomTabsCallback(Landroid/widget/ImageView;I)V
    .locals 1

    const-string v0, "$this$setCircularBitmap"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->ICustomTabsCallback(Landroid/view/View;)Lo/AppCompatImageButton;

    move-result-object v0

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/AppCompatImageButton;->onMessageChannelReady(Ljava/lang/Integer;)Lo/setTextClassifier;

    move-result-object p1

    .line 151
    new-instance v0, Lo/setHorizontalGravity;

    invoke-direct {v0}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->onTransact()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object p1

    .line 152
    invoke-virtual {p1, p0}, Lo/setTextClassifier;->onMessageChannelReady(Landroid/widget/ImageView;)Lo/getPromptPosition;

    return-void
.end method

.method public static final extraCallback(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2

    const-string v0, "$this$animateOutToLeftView"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f010039

    .line 203
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    const-string v0, "animation"

    .line 204
    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 296
    new-instance p2, Lo/setDrawerListener$onPostMessage;

    invoke-direct {p2}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 206
    new-instance v0, Lo/setInflatedId$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lo/setInflatedId$ICustomTabsCallback;-><init>(Landroid/view/View;)V

    check-cast v0, Lo/onDisconnectSetValue;

    const-string v1, "func"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4031
    iput-object v0, p2, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 298
    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 210
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method public static synthetic extraCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$spaceFormat"

    .line 256
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 7259
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge p0, v1, :cond_0

    const-string v1, " "

    .line 7260
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x5

    goto :goto_0

    .line 7263
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "s.toString()"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final onMessageChannelReady(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2

    const-string v0, "$this$animateInFromRightView"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f010037

    .line 232
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    const-string v0, "animation"

    .line 233
    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 304
    new-instance p2, Lo/setDrawerListener$onPostMessage;

    invoke-direct {p2}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 235
    new-instance v0, Lo/setInflatedId$extraCallback;

    invoke-direct {v0, p1}, Lo/setInflatedId$extraCallback;-><init>(Landroid/view/View;)V

    check-cast v0, Lo/onDisconnectSetValue;

    const-string v1, "func"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5039
    iput-object v0, p2, Lo/setDrawerListener$onPostMessage;->extraCallback:Lo/onDisconnectSetValue;

    .line 306
    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 239
    new-instance p2, Lo/setInflatedId$onNavigationEvent;

    invoke-direct {p2, p1, p0}, Lo/setInflatedId$onNavigationEvent;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public static synthetic onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$toMaskNumber"

    .line 248
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 5252
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string v1, "$this$padStart"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6177
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p0, :cond_3

    .line 7157
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p0, v1, :cond_1

    const/4 p0, 0x0

    .line 7158
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, p0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    .line 7160
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7161
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr p0, v2

    if-lez p0, :cond_2

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x58

    .line 7162
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v2, p0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7163
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7164
    move-object p0, v1

    check-cast p0, Ljava/lang/CharSequence;

    .line 6177
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7156
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Desired length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is less than zero."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 4

    const-string v0, "$this$customToast"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0e0054

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b08ca

    .line 170
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Landroid/widget/TextView;

    .line 171
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance p1, Landroid/widget/Toast;

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0700ed

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p2, v1, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 174
    invoke-virtual {p1, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 175
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 176
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 170
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final onNavigationEvent(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2

    const-string v0, "$this$animateInFromLeftView"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f010036

    .line 216
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    const-string v0, "animation"

    .line 217
    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 300
    new-instance p2, Lo/setDrawerListener$onPostMessage;

    invoke-direct {p2}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 219
    new-instance v0, Lo/setInflatedId$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/setInflatedId$onMessageChannelReady;-><init>(Landroid/view/View;)V

    check-cast v0, Lo/onDisconnectSetValue;

    const-string v1, "func"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4039
    iput-object v0, p2, Lo/setDrawerListener$onPostMessage;->extraCallback:Lo/onDisconnectSetValue;

    .line 302
    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 223
    new-instance p2, Lo/setInflatedId$onPostMessage;

    invoke-direct {p2, p1, p0}, Lo/setInflatedId$onPostMessage;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public static final onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 272
    check-cast p0, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const-string v1, " "

    .line 275
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 8202
    invoke-static {p0, v2, v0, v0}, Lo/childWrites;->extraCallback(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    .line 275
    move-object v2, p0

    check-cast v2, Ljava/lang/Iterable;

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object p0, Lo/setInflatedId$onRelationshipValidationResult;->onNavigationEvent:Lo/setInflatedId$onRelationshipValidationResult;

    move-object v8, p0

    check-cast v8, Lo/onDisconnectSetValue;

    const/16 v9, 0x1e

    invoke-static/range {v2 .. v9}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/onDisconnectSetValue;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$this$setImageUrl"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lo/setHorizontalGravity;

    invoke-direct {v0}, Lo/setHorizontalGravity;-><init>()V

    .line 133
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->ICustomTabsCallback(Landroid/view/View;)Lo/AppCompatImageButton;

    move-result-object v1

    .line 134
    invoke-virtual {v1, p1}, Lo/AppCompatImageButton;->onPostMessage(Ljava/lang/String;)Lo/setTextClassifier;

    move-result-object p1

    .line 135
    check-cast v0, Lo/measureChildBeforeLayout;

    invoke-virtual {p1, v0}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object p1

    .line 136
    invoke-virtual {p1, p0}, Lo/setTextClassifier;->onMessageChannelReady(Landroid/widget/ImageView;)Lo/getPromptPosition;

    return-void
.end method

.method public static final onPostMessage(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2

    const-string v0, "$this$animateOutToRightView"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f010038

    .line 190
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    const-string v0, "animation"

    .line 191
    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 292
    new-instance p2, Lo/setDrawerListener$onPostMessage;

    invoke-direct {p2}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 193
    new-instance v0, Lo/setInflatedId$asInterface;

    invoke-direct {v0, p1}, Lo/setInflatedId$asInterface;-><init>(Landroid/view/View;)V

    check-cast v0, Lo/onDisconnectSetValue;

    const-string v1, "func"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3031
    iput-object v0, p2, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 294
    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 197
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method public static onPostMessage(Lo/estimateNextPositionDiffForFling;)Lo/remove;
    .locals 33

    move-object/from16 v0, p0

    const-string v1, "gameData"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10026
    iget-boolean v1, v0, Lo/estimateNextPositionDiffForFling;->getInterfaceDescriptor:Z

    if-nez v1, :cond_f

    .line 10028
    iget-boolean v1, v0, Lo/estimateNextPositionDiffForFling;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v1, :cond_0

    goto/16 :goto_b

    .line 9013
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11018
    iget-object v2, v0, Lo/estimateNextPositionDiffForFling;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 9013
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 11019
    iget v1, v0, Lo/estimateNextPositionDiffForFling;->onTransact:I

    .line 11027
    iget-object v2, v0, Lo/estimateNextPositionDiffForFling;->ICustomTabsService:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 11029
    iget-object v4, v0, Lo/estimateNextPositionDiffForFling;->postMessage:Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 9024
    instance-of v5, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    instance-of v4, v4, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v4, :cond_8

    .line 9025
    check-cast v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 12009
    iget-object v4, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 9025
    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;

    if-eqz v4, :cond_2

    .line 12031
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;->onTransact:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v4, v6

    .line 13009
    :goto_0
    iget-object v5, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 9026
    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;

    if-eqz v5, :cond_3

    .line 13019
    iget-wide v8, v5, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;->onMessageChannelReady:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    .line 9027
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v6

    .line 14009
    :goto_1
    iget-object v8, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 9029
    check-cast v8, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;

    if-eqz v8, :cond_4

    .line 14017
    iget-wide v8, v8, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;->extraCallback:J

    .line 9029
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v6

    .line 15009
    :goto_2
    iget-object v9, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 9030
    check-cast v9, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;

    if-eqz v9, :cond_5

    .line 15029
    iget-boolean v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;->ICustomTabsCallback$Stub:Z

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 16009
    :goto_3
    iget-object v10, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 9031
    check-cast v10, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;

    if-eqz v10, :cond_6

    .line 16037
    iget-object v6, v10, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;->newSession:Ljava/lang/String;

    .line 17009
    :cond_6
    iget-object v2, v2, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 9032
    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;

    if-eqz v2, :cond_7

    .line 17024
    iget-boolean v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails;->asInterface:Z

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    move v15, v2

    move-object v10, v5

    move-object/from16 v16, v6

    move v14, v9

    move-object v6, v4

    move-object v9, v8

    goto :goto_5

    :cond_8
    move-object v9, v6

    move-object v10, v9

    move-object/from16 v16, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    const/4 v2, 0x1

    if-eqz v14, :cond_9

    if-eqz v1, :cond_c

    :cond_9
    if-eqz v9, :cond_a

    .line 9034
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_6

    :cond_a
    const-wide/16 v4, 0x0

    :goto_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const-string v11, "Calendar.getInstance()"

    invoke-static {v8, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    cmp-long v8, v4, v11

    if-ltz v8, :cond_c

    .line 18024
    iget-boolean v4, v0, Lo/estimateNextPositionDiffForFling;->newSession:Z

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    const/4 v13, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v13, 0x1

    .line 9036
    :goto_8
    new-instance v18, Lo/remove;

    const/4 v5, 0x0

    .line 9041
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 19020
    iget v8, v0, Lo/estimateNextPositionDiffForFling;->ICustomTabsCallback$Stub:I

    .line 19023
    iget-boolean v1, v0, Lo/estimateNextPositionDiffForFling;->asInterface:Z

    if-nez v1, :cond_e

    .line 20014
    iget-boolean v1, v0, Lo/estimateNextPositionDiffForFling;->onNavigationEvent:Z

    if-nez v1, :cond_e

    .line 20025
    iget-boolean v0, v0, Lo/estimateNextPositionDiffForFling;->warmup:Z

    if-eqz v0, :cond_d

    goto :goto_9

    :cond_d
    const/4 v12, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v12, 0x1

    :goto_a
    const/16 v17, 0x1

    move-object/from16 v4, v18

    .line 9036
    invoke-direct/range {v4 .. v17}, Lo/remove;-><init>(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Double;Ljava/lang/Integer;ZZZZLjava/lang/String;I)V

    return-object v18

    .line 9010
    :cond_f
    :goto_b
    new-instance v0, Lo/remove;

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xffe

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v32}, Lo/remove;-><init>(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Double;Ljava/lang/Integer;ZZZZLjava/lang/String;I)V

    return-object v0
.end method

.method public static final onPostMessage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "$this$checkAndOpenSupportedApp"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string p1, "You don\'t have any app to perform this action"

    .line 184
    check-cast p1, Ljava/lang/CharSequence;

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 2168
    invoke-static {p0, p1, v0, v1}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public static final onPostMessage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$this$setCircularImageUrl"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lo/setHorizontalGravity;

    invoke-direct {v0}, Lo/setHorizontalGravity;-><init>()V

    .line 141
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->ICustomTabsCallback(Landroid/view/View;)Lo/AppCompatImageButton;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p1}, Lo/AppCompatImageButton;->onPostMessage(Ljava/lang/String;)Lo/setTextClassifier;

    move-result-object p1

    .line 143
    check-cast v0, Lo/measureChildBeforeLayout;

    invoke-virtual {p1, v0}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object p1

    .line 144
    new-instance v0, Lo/setHorizontalGravity;

    invoke-direct {v0}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->onTransact()Lo/measureChildBeforeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p0}, Lo/setTextClassifier;->onMessageChannelReady(Landroid/widget/ImageView;)Lo/getPromptPosition;

    return-void
.end method

.method public static final onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    const-string v0, "$this$setTextWithVisibility"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 58
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/16 p1, 0x8

    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 61
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 22150
    iget-object v0, p0, Lo/setInflatedId;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21122
    iget-boolean v0, p0, Lo/setInflatedId;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 22117
    :try_start_0
    iget-object v1, p0, Lo/setInflatedId;->onNavigationEvent:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    const/4 v1, 0x0

    .line 22118
    invoke-virtual {p0, v1}, Lo/setInflatedId;->onNavigationEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 21134
    :goto_0
    :try_start_1
    iget-object v1, p0, Lo/setInflatedId;->onNavigationEvent:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 21140
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lo/setInflatedId;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v1}, Lo/filtersNodes;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 21144
    iput-boolean v1, p0, Lo/setInflatedId;->ICustomTabsCallback:Z

    if-eqz v0, :cond_3

    .line 21146
    invoke-static {v0}, Lo/getPriorityKey;->onMessageChannelReady(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 21112
    invoke-virtual {p0, v0}, Lo/setInflatedId;->onNavigationEvent(Z)V

    .line 21113
    iget-object v0, p0, Lo/setInflatedId;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V

    return-void
.end method

.method public onNavigationEvent(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21084
    iget-object v0, p0, Lo/setInflatedId;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->extraCallback()Lo/updatePriority;

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 21086
    invoke-virtual {v0, v1}, Lo/updatePriority;->onPostMessage(I)Lo/shouldLog;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 21093
    iget-object v2, p0, Lo/setInflatedId;->onNavigationEvent:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lo/shouldLog;->extraCallback:[B

    iget v4, v1, Lo/shouldLog;->onNavigationEvent:I

    iget v5, v1, Lo/shouldLog;->onNavigationEvent:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    .line 21094
    :cond_1
    iget-object v2, p0, Lo/setInflatedId;->onNavigationEvent:Ljava/util/zip/Deflater;

    iget-object v3, v1, Lo/shouldLog;->extraCallback:[B

    iget v4, v1, Lo/shouldLog;->onNavigationEvent:I

    iget v5, v1, Lo/shouldLog;->onNavigationEvent:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_1
    if-lez v2, :cond_2

    .line 21097
    iget v3, v1, Lo/shouldLog;->onNavigationEvent:I

    add-int/2addr v3, v2

    iput v3, v1, Lo/shouldLog;->onNavigationEvent:I

    .line 21098
    iget-wide v3, v0, Lo/updatePriority;->ICustomTabsCallback:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lo/updatePriority;->ICustomTabsCallback:J

    .line 21099
    iget-object v1, p0, Lo/setInflatedId;->onPostMessage:Lo/filtersNodes;

    invoke-interface {v1}, Lo/filtersNodes;->extraCommand()Lo/filtersNodes;

    goto :goto_0

    .line 21100
    :cond_2
    iget-object v2, p0, Lo/setInflatedId;->onNavigationEvent:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21101
    iget p1, v1, Lo/shouldLog;->ICustomTabsCallback:I

    iget v2, v1, Lo/shouldLog;->onNavigationEvent:I

    if-ne p1, v2, :cond_3

    .line 21103
    invoke-virtual {v1}, Lo/shouldLog;->onPostMessage()Lo/shouldLog;

    move-result-object p1

    iput-object p1, v0, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    .line 21104
    invoke-static {v1}, Lo/getLeafType;->onMessageChannelReady(Lo/shouldLog;)V

    :cond_3
    return-void
.end method

.method public onPostMessage(Lo/updatePriority;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21060
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lo/getPriorityKey;->extraCallback(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 21063
    iget-object v0, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    .line 21064
    iget v1, v0, Lo/shouldLog;->onNavigationEvent:I

    iget v2, v0, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 21065
    iget-object v1, p0, Lo/setInflatedId;->onNavigationEvent:Ljava/util/zip/Deflater;

    iget-object v3, v0, Lo/shouldLog;->extraCallback:[B

    iget v4, v0, Lo/shouldLog;->ICustomTabsCallback:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v1, 0x0

    .line 21068
    invoke-virtual {p0, v1}, Lo/setInflatedId;->onNavigationEvent(Z)V

    .line 21071
    iget-wide v3, p1, Lo/updatePriority;->ICustomTabsCallback:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p1, Lo/updatePriority;->ICustomTabsCallback:J

    .line 21072
    iget v1, v0, Lo/shouldLog;->ICustomTabsCallback:I

    add-int/2addr v1, v2

    iput v1, v0, Lo/shouldLog;->ICustomTabsCallback:I

    .line 21073
    iget v1, v0, Lo/shouldLog;->ICustomTabsCallback:I

    iget v2, v0, Lo/shouldLog;->onNavigationEvent:I

    if-ne v1, v2, :cond_0

    .line 21074
    invoke-virtual {v0}, Lo/shouldLog;->onPostMessage()Lo/shouldLog;

    move-result-object v1

    iput-object v1, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    .line 21075
    invoke-static {v0}, Lo/getLeafType;->onMessageChannelReady(Lo/shouldLog;)V

    :cond_0
    sub-long/2addr p2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeflaterSink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setInflatedId;->onPostMessage:Lo/filtersNodes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
