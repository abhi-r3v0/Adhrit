.class public abstract Landroid/support/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Transition$EpicenterCallback;,
        Landroid/support/transition/Transition$ArrayListManager;,
        Landroid/support/transition/Transition$AnimationInfo;,
        Landroid/support/transition/Transition$TransitionListener;,
        Landroid/support/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/support/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroid/support/transition/TransitionSet;

.field private mPathMotion:Landroid/support/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroid/support/transition/TransitionPropagation;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Landroid/support/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 162
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 169
    new-instance v0, Landroid/support/transition/Transition$1;

    invoke-direct {v0}, Landroid/support/transition/Transition$1;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    .line 203
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 181
    iput-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 182
    iput-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 186
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 196
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 197
    iput-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 198
    sget-object v1, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 207
    iput-object v0, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 215
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 226
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 230
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 233
    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 181
    iput-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 182
    iput-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 186
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 195
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 196
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 197
    iput-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 198
    sget-object v1, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 207
    iput-object v0, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 215
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 223
    iput v1, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 226
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 230
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 233
    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 252
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 273
    sget-object v0, Landroid/support/transition/Styleable;->TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v2, "duration"

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 275
    invoke-static {v0, p2, v2, v4, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 278
    invoke-virtual {p0, v4, v5}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    :cond_0
    const-string v2, "startDelay"

    const/4 v4, 0x2

    .line 280
    invoke-static {v0, p2, v2, v4, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 283
    invoke-virtual {p0, v2, v3}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    :cond_1
    const-string v2, "interpolator"

    .line 285
    invoke-static {v0, p2, v2, v1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_2

    .line 288
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    :cond_2
    const-string p1, "matchOrder"

    const/4 v1, 0x3

    .line 290
    invoke-static {v0, p2, p1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 293
    invoke-static {p1}, Landroid/support/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/transition/Transition;->setMatchOrder([I)V

    .line 295
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/transition/Transition;)Ljava/util/ArrayList;
    .locals 0

    .line 118
    iget-object p0, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 642
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 643
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 644
    iget-object v4, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 645
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v2, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 652
    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/transition/TransitionValues;

    .line 653
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object p1, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V
    .locals 3

    .line 1529
    iget-object v0, p0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1532
    iget-object v1, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1534
    iget-object v1, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1536
    :cond_0
    iget-object v1, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1539
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1541
    iget-object v1, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1543
    iget-object v1, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1545
    :cond_2
    iget-object v1, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 1550
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1551
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1552
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1553
    iget-object p2, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p2, v1, v2}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_4

    .line 1555
    iget-object p1, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 1557
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1558
    iget-object p0, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    .line 1561
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1562
    iget-object p0, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, v1, v2, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private static alreadyContains([II)Z
    .locals 4

    .line 526
    aget v0, p0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 528
    aget v3, p0, v2

    if-ne v3, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1599
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1600
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1603
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1606
    :cond_2
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1607
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1609
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1614
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1615
    new-instance v1, Landroid/support/transition/TransitionValues;

    invoke-direct {v1}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1616
    iput-object p1, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 1618
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_1

    .line 1620
    :cond_5
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1622
    :goto_1
    iget-object v3, v1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1623
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    if-eqz p2, :cond_6

    .line 1625
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_2

    .line 1627
    :cond_6
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1630
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1632
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1635
    :cond_8
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1638
    :cond_9
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1639
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1641
    iget-object v3, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1646
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 1647
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 1648
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_1

    if-eqz p3, :cond_0

    .line 1308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1310
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1159
    invoke-static {p0, p1}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    .line 1161
    :cond_0
    invoke-static {p0, p1}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1391
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1393
    :cond_0
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1323
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1325
    :cond_0
    invoke-static {p1, p2}, Landroid/support/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static getRunningAnimators()Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 855
    sget-object v0, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 857
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 858
    sget-object v1, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 0

    .line 1860
    iget-object p0, p0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1861
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1871
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method

.method private matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 589
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 591
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 592
    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 594
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 596
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 598
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 541
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 542
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    if-eqz v1, :cond_0

    .line 545
    iget-object v2, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 547
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v2, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 562
    invoke-virtual {p3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 564
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 565
    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 566
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 567
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 568
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 569
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 571
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 616
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 618
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 619
    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 621
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 623
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 625
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    .locals 5

    .line 662
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 663
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p2, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    const/4 v2, 0x0

    .line 665
    :goto_0
    iget-object v3, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 666
    iget-object v3, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 679
    :pswitch_0
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V

    goto :goto_1

    .line 675
    :pswitch_1
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 671
    :pswitch_2
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_1

    .line 668
    :pswitch_3
    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 6

    .line 300
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 304
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 305
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    .line 306
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    .line 307
    aput v3, p0, v2

    goto :goto_1

    :cond_0
    const-string v4, "instance"

    .line 308
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    aput v5, p0, v2

    goto :goto_1

    :cond_1
    const-string v4, "name"

    .line 310
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    .line 311
    aput v3, p0, v2

    goto :goto_1

    :cond_2
    const-string v4, "itemId"

    .line 312
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x4

    .line 313
    aput v3, p0, v2

    goto :goto_1

    .line 314
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 316
    array-length v3, p0

    sub-int/2addr v3, v5

    new-array v3, v3, [I

    .line 317
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    move-object p0, v3

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 321
    :cond_4
    new-instance p0, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown match type in matchOrder: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p0
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 894
    new-instance v0, Landroid/support/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/Transition$2;-><init>(Landroid/support/transition/Transition;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 906
    invoke-virtual {p0, p1}, Landroid/support/transition/Transition;->animate(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2031
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2034
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-lez p1, :cond_0

    .line 1021
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 996
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1075
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1078
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1045
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1048
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1894
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    goto :goto_0

    .line 1896
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 1897
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1899
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 1900
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1902
    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1903
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1905
    :cond_3
    new-instance v0, Landroid/support/transition/Transition$3;

    invoke-direct {v0, p0}, Landroid/support/transition/Transition$3;-><init>(Landroid/support/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1912
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method protected cancel()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2008
    iget-object v1, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 2009
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2011
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2012
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2013
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2014
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 2016
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/support/transition/Transition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroid/support/transition/TransitionValues;)V
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method capturePropagationValues(Landroid/support/transition/TransitionValues;)V
    .locals 5

    .line 2178
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2179
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 2184
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2185
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 2191
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPropagation;->captureValues(Landroid/support/transition/TransitionValues;)V

    :cond_3
    return-void
.end method

.method public abstract captureStartValues(Landroid/support/transition/TransitionValues;)V
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1466
    invoke-virtual {p0, p2}, Landroid/support/transition/Transition;->clearValues(Z)V

    .line 1467
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1468
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1469
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1508
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    move v0, v1

    .line 1470
    :goto_1
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1471
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1472
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1474
    new-instance v3, Landroid/support/transition/TransitionValues;

    invoke-direct {v3}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1475
    iput-object v2, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 1477
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_2

    .line 1479
    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1481
    :goto_2
    iget-object v4, v3, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    if-eqz p2, :cond_5

    .line 1484
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_3

    .line 1486
    :cond_5
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move p1, v1

    .line 1490
    :goto_4
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 1491
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1492
    new-instance v2, Landroid/support/transition/TransitionValues;

    invoke-direct {v2}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1493
    iput-object v0, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 1495
    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_5

    .line 1497
    :cond_8
    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1499
    :goto_5
    iget-object v3, v2, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    if-eqz p2, :cond_9

    .line 1502
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, v0, v2}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_6

    .line 1504
    :cond_9
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, v0, v2}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 1510
    iget-object p1, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    if-eqz p1, :cond_d

    .line 1511
    iget-object p1, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result p1

    .line 1512
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_8
    if-ge v0, p1, :cond_b

    .line 1514
    iget-object v2, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1515
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 1518
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1520
    iget-object v2, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1521
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method clearValues(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1575
    iget-object p1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1576
    iget-object p1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1577
    iget-object p1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    goto :goto_0

    .line 1579
    :cond_0
    iget-object p1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1580
    iget-object p1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1581
    iget-object p1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    :goto_0
    return-void
.end method

.method public clone()Landroid/support/transition/Transition;
    .locals 3

    const/4 v0, 0x0

    .line 2213
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    .line 2214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2215
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 2216
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 2217
    iput-object v0, v1, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2218
    iput-object v0, v1, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 705
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    .line 707
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 708
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_d

    move-object/from16 v13, p4

    .line 710
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    move-object/from16 v14, p5

    .line 711
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    if-eqz v2, :cond_0

    .line 712
    iget-object v5, v2, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 715
    iget-object v5, v3, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_7

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 722
    invoke-virtual {v6, v2, v3}, Landroid/support/transition/Transition;->isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    .line 742
    invoke-virtual {v6, v7, v2, v3}, Landroid/support/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_a

    .line 748
    iget-object v15, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v4

    if-eqz v15, :cond_9

    if-eqz v4, :cond_9

    .line 750
    array-length v11, v4

    if-lez v11, :cond_9

    .line 751
    new-instance v11, Landroid/support/transition/TransitionValues;

    invoke-direct {v11}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 752
    iput-object v15, v11, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 753
    iget-object v5, v10, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v15}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    .line 755
    :goto_3
    array-length v13, v4

    if-ge v10, v13, :cond_6

    .line 756
    iget-object v13, v11, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 757
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 756
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v18

    move-object/from16 v5, v19

    move-object/from16 v14, p5

    goto :goto_3

    :cond_6
    move/from16 v18, v12

    .line 760
    invoke-virtual {v8}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    .line 762
    invoke-virtual {v8, v5}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 763
    invoke-virtual {v8, v10}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/transition/Transition$AnimationInfo;

    .line 764
    iget-object v12, v10, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-ne v12, v15, :cond_7

    iget-object v12, v10, Landroid/support/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 766
    iget-object v10, v10, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    invoke-virtual {v10, v11}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v5, v17

    goto :goto_5

    :cond_9
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v5, v17

    const/4 v11, 0x0

    :goto_5
    move-object v10, v5

    move-object v5, v11

    goto :goto_6

    :cond_a
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 775
    iget-object v4, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_6
    if-eqz v10, :cond_c

    .line 778
    iget-object v4, v6, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    if-eqz v4, :cond_b

    .line 779
    iget-object v4, v6, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v4, v7, v6, v2, v3}, Landroid/support/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)J

    move-result-wide v2

    .line 780
    iget-object v4, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 781
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_b
    move-wide v11, v0

    .line 783
    new-instance v13, Landroid/support/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v4

    move-object v0, v13

    move-object v1, v15

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/Transition;Landroid/support/transition/WindowIdImpl;Landroid/support/transition/TransitionValues;)V

    .line 785
    invoke-virtual {v8, v10, v13}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_c
    :goto_7
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    const/4 v2, 0x0

    .line 792
    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 793
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 794
    iget-object v4, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 795
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long v7, v4, v0

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v4

    add-long v10, v7, v4

    .line 796
    invoke-virtual {v3, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method protected end()V
    .locals 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1952
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 1953
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_5

    .line 1954
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1955
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1956
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1957
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1959
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/support/transition/Transition;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1962
    :goto_1
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1963
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1965
    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1968
    :goto_2
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1969
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1971
    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1974
    :cond_4
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1297
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1267
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1380
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1215
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1189
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1353
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroid/support/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1241
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroid/support/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1985
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1986
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-eqz p1, :cond_1

    .line 1988
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1990
    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition$AnimationInfo;

    .line 1991
    iget-object v3, v2, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, v2, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1992
    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 1993
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 352
    iget-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2135
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2138
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    invoke-virtual {v0, p0}, Landroid/support/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroid/support/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Landroid/support/transition/Transition$EpicenterCallback;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2122
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 407
    iget-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 6

    .line 1680
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1683
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 1687
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 1690
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    if-nez v5, :cond_3

    return-object v1

    .line 1694
    :cond_3
    iget-object v5, v5, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 1701
    iget-object p1, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1702
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/support/transition/TransitionValues;

    :cond_7
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2239
    iget-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroid/support/transition/PathMotion;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2092
    iget-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroid/support/transition/TransitionPropagation;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2170
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 379
    iget-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1410
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1454
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1661
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1664
    iget-object p2, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 1665
    :goto_0
    iget-object p2, p2, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/transition/TransitionValues;

    return-object p1
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .locals 6
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1838
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1840
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1841
    invoke-static {p1, p2, v5}, Landroid/support/transition/Transition;->isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1847
    :cond_1
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1848
    invoke-static {p1, p2, v3}, Landroid/support/transition/Transition;->isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move v0, v1

    :cond_3
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .locals 5

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 813
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 816
    :cond_0
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 819
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 820
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 822
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 823
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 828
    :cond_3
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 829
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 833
    :cond_4
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 834
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v3

    .line 838
    :cond_7
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 841
    :cond_8
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    .line 844
    :cond_9
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    move v0, v2

    .line 845
    :goto_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 846
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1716
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mEnded:Z

    if-nez v0, :cond_3

    .line 1717
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1718
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1719
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 1721
    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition$AnimationInfo;

    .line 1722
    iget-object v4, v3, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1723
    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1724
    invoke-static {v3}, Landroid/support/transition/AnimatorUtils;->pause(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1727
    :cond_1
    iget-object p1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1728
    iget-object p1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1729
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1730
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1732
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionPause(Landroid/support/transition/Transition;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1735
    :cond_2
    iput-boolean v2, p0, Landroid/support/transition/Transition;->mPaused:Z

    :cond_3
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1781
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->matchStartAndEnd(Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V

    .line 1783
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1784
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1785
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_5

    .line 1787
    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_4

    .line 1789
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$AnimationInfo;

    if-eqz v5, :cond_4

    .line 1790
    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    .line 1791
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1792
    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    .line 1793
    iget-object v7, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 1794
    invoke-virtual {p0, v7, v3}, Landroid/support/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v8

    .line 1795
    invoke-virtual {p0, v7, v3}, Landroid/support/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v7

    if-nez v8, :cond_0

    if-eqz v7, :cond_1

    .line 1796
    :cond_0
    iget-object v5, v5, Landroid/support/transition/Transition$AnimationInfo;->mTransition:Landroid/support/transition/Transition;

    .line 1797
    invoke-virtual {v5, v6, v7}, Landroid/support/transition/Transition;->isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    .line 1799
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 1808
    :cond_2
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1803
    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1815
    :cond_5
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v7, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v8, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1816
    invoke-virtual {p0}, Landroid/support/transition/Transition;->runAnimators()V

    return-void
.end method

.method public removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/support/transition/Transition$TransitionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 2047
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 2050
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2051
    iget-object p1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2052
    iput-object p1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public removeTarget(I)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-lez p1, :cond_0

    .line 1111
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1094
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1146
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/support/transition/Transition;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1128
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1748
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mPaused:Z

    if-eqz v0, :cond_3

    .line 1749
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mEnded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1750
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1751
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    .line 1752
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1754
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition$AnimationInfo;

    .line 1755
    iget-object v4, v3, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1756
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1757
    invoke-static {v3}, Landroid/support/transition/AnimatorUtils;->resume(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1760
    :cond_1
    iget-object p1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1761
    iget-object p1, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1762
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1763
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1765
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionResume(Landroid/support/transition/Transition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1769
    :cond_2
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    :cond_3
    return-void
.end method

.method protected runAnimators()V
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 874
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 875
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 877
    iget-object v1, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 881
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 882
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 883
    invoke-direct {p0, v2, v0}, Landroid/support/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    goto :goto_0

    .line 886
    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 887
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 0

    .line 2202
    iput-boolean p1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    return-void
.end method

.method public setDuration(J)Landroid/support/transition/Transition;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 339
    iput-wide p1, p0, Landroid/support/transition/Transition;->mDuration:J

    return-object p0
.end method

.method public setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V
    .locals 0
    .param p1    # Landroid/support/transition/Transition$EpicenterCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2107
    iput-object p1, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .locals 0
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 393
    iput-object p1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 2

    if-eqz p1, :cond_4

    .line 505
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 508
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 509
    aget v1, p1, v0

    .line 510
    invoke-static {v1}, Landroid/support/transition/Transition;->isValidMatch(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 511
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 513
    :cond_1
    invoke-static {p1, v0}, Landroid/support/transition/Transition;->alreadyContains([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains a duplicate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_3
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    goto :goto_2

    .line 506
    :cond_4
    :goto_1
    sget-object p1, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object p1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    :goto_2
    return-void
.end method

.method public setPathMotion(Landroid/support/transition/PathMotion;)V
    .locals 0
    .param p1    # Landroid/support/transition/PathMotion;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 2075
    sget-object p1, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object p1, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    goto :goto_0

    .line 2077
    :cond_0
    iput-object p1, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    :goto_0
    return-void
.end method

.method public setPropagation(Landroid/support/transition/TransitionPropagation;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionPropagation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2153
    iput-object p1, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/Transition;
    .locals 0

    .line 2197
    iput-object p1, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/Transition;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 366
    iput-wide p1, p0, Landroid/support/transition/Transition;->mStartDelay:J

    return-object p0
.end method

.method protected start()V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1925
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_1

    .line 1926
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1927
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1928
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1929
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1931
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionStart(Landroid/support/transition/Transition;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1934
    :cond_0
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 1936
    :cond_1
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2207
    invoke-virtual {p0, v0}, Landroid/support/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2245
    iget-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/support/transition/Transition;->mDuration:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2248
    :cond_0
    iget-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/support/transition/Transition;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2251
    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2254
    :cond_2
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2255
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2256
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    move-object v0, p1

    move p1, v1

    .line 2257
    :goto_0
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    if-lez p1, :cond_4

    .line 2259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2261
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 2264
    :cond_6
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2265
    :goto_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    if-lez v1, :cond_7

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2269
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2272
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method
