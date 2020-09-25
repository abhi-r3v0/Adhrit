.class final Lo/setFirebaseUIVersion$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FirebaseAuthEmailException$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setFirebaseUIVersion;-><init>(Lo/setFirebaseUIVersion$extraCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/setFirebaseUIVersion;


# direct methods
.method constructor <init>(Lo/setFirebaseUIVersion;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lo/setFirebaseUIVersion$3;->onPostMessage:Lo/setFirebaseUIVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/onIdTokenChanged;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 205
    iget-object v0, p0, Lo/setFirebaseUIVersion$3;->onPostMessage:Lo/setFirebaseUIVersion;

    .line 1071
    iget-object v0, v0, Lo/setFirebaseUIVersion;->IconCompatParcelizer:[Lo/onIdTokenChanged$asBinder;

    .line 1286
    iget v1, p1, Lo/onIdTokenChanged;->onNavigationEvent:F

    .line 1219
    invoke-virtual {p1, v1}, Lo/onIdTokenChanged;->onNavigationEvent(F)V

    .line 1220
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lo/onIdTokenChanged;->asBinder:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1221
    new-instance p1, Lo/onIdTokenChanged$2;

    invoke-direct {p1, v1, p2}, Lo/onIdTokenChanged$2;-><init>(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 205
    aput-object p1, v0, p3

    return-void
.end method

.method public final extraCallback(Lo/onIdTokenChanged;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 210
    iget-object v0, p0, Lo/setFirebaseUIVersion$3;->onPostMessage:Lo/setFirebaseUIVersion;

    .line 2071
    iget-object v0, v0, Lo/setFirebaseUIVersion;->AudioAttributesCompatParcelizer:[Lo/onIdTokenChanged$asBinder;

    .line 2286
    iget v1, p1, Lo/onIdTokenChanged;->onNavigationEvent:F

    .line 2219
    invoke-virtual {p1, v1}, Lo/onIdTokenChanged;->onNavigationEvent(F)V

    .line 2220
    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Lo/onIdTokenChanged;->asBinder:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2221
    new-instance p1, Lo/onIdTokenChanged$2;

    invoke-direct {p1, v1, p2}, Lo/onIdTokenChanged$2;-><init>(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 210
    aput-object p1, v0, p3

    return-void
.end method
