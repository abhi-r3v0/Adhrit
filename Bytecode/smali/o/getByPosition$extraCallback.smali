.class public final Lo/getByPosition$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getByPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:J

.field final ICustomTabsCallback$Stub:Landroid/content/Context;

.field extraCallback:I

.field onMessageChannelReady:J

.field onNavigationEvent:Ljava/lang/String;

.field onPostMessage:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field onRelationshipValidationResult:J

.field onTransact:Lo/getStrokeAlpha;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 141
    iput v0, p0, Lo/getByPosition$extraCallback;->extraCallback:I

    const-string v0, "image_cache"

    .line 142
    iput-object v0, p0, Lo/getByPosition$extraCallback;->onNavigationEvent:Ljava/lang/String;

    const-wide/32 v0, 0x2800000

    .line 144
    iput-wide v0, p0, Lo/getByPosition$extraCallback;->ICustomTabsCallback:J

    const-wide/32 v0, 0xa00000

    .line 145
    iput-wide v0, p0, Lo/getByPosition$extraCallback;->onMessageChannelReady:J

    const-wide/32 v0, 0x200000

    .line 146
    iput-wide v0, p0, Lo/getByPosition$extraCallback;->onRelationshipValidationResult:J

    .line 147
    new-instance v0, Lo/SavedStateRegistry$1;

    invoke-direct {v0}, Lo/SavedStateRegistry$1;-><init>()V

    iput-object v0, p0, Lo/getByPosition$extraCallback;->onTransact:Lo/getStrokeAlpha;

    .line 157
    iput-object p1, p0, Lo/getByPosition$extraCallback;->ICustomTabsCallback$Stub:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lo/getByPosition$extraCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/getByPosition;
    .locals 1

    .line 252
    new-instance v0, Lo/getByPosition;

    invoke-direct {v0, p0}, Lo/getByPosition;-><init>(Lo/getByPosition$extraCallback;)V

    return-object v0
.end method
