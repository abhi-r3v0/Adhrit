.class public abstract Lo/onIdTokenChanged$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onIdTokenChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation


# instance fields
.field protected final ICustomTabsCallback$Stub:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/onIdTokenChanged$onPostMessage;->ICustomTabsCallback$Stub:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
.end method
