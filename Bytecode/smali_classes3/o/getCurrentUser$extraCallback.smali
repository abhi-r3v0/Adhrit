.class final Lo/getCurrentUser$extraCallback;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCurrentUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getCurrentUser;


# direct methods
.method private constructor <init>(Lo/getCurrentUser;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lo/getCurrentUser$extraCallback;->extraCallback:Lo/getCurrentUser;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getCurrentUser;B)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lo/getCurrentUser$extraCallback;-><init>(Lo/getCurrentUser;)V

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 267
    iget-object v0, p0, Lo/getCurrentUser$extraCallback;->extraCallback:Lo/getCurrentUser;

    return-object v0
.end method
