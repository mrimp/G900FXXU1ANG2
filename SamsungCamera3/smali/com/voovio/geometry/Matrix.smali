.class public Lcom/voovio/geometry/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public tx:F

.field public ty:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/voovio/geometry/Matrix;->a:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->b:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->c:F

    iput v1, p0, Lcom/voovio/geometry/Matrix;->d:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->tx:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->ty:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/voovio/geometry/Matrix;->a:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->b:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->c:F

    iput v1, p0, Lcom/voovio/geometry/Matrix;->d:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->tx:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->ty:F

    iput p1, p0, Lcom/voovio/geometry/Matrix;->a:F

    iput p2, p0, Lcom/voovio/geometry/Matrix;->b:F

    iput p3, p0, Lcom/voovio/geometry/Matrix;->c:F

    iput p4, p0, Lcom/voovio/geometry/Matrix;->d:F

    iput p5, p0, Lcom/voovio/geometry/Matrix;->tx:F

    iput p6, p0, Lcom/voovio/geometry/Matrix;->ty:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/voovio/geometry/Matrix;
    .locals 7

    new-instance v0, Lcom/voovio/geometry/Matrix;

    iget v1, p0, Lcom/voovio/geometry/Matrix;->a:F

    iget v2, p0, Lcom/voovio/geometry/Matrix;->b:F

    iget v3, p0, Lcom/voovio/geometry/Matrix;->c:F

    iget v4, p0, Lcom/voovio/geometry/Matrix;->d:F

    iget v5, p0, Lcom/voovio/geometry/Matrix;->tx:F

    iget v6, p0, Lcom/voovio/geometry/Matrix;->ty:F

    invoke-direct/range {v0 .. v6}, Lcom/voovio/geometry/Matrix;-><init>(FFFFFF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/voovio/geometry/Matrix;->clone()Lcom/voovio/geometry/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public concat(Lcom/voovio/geometry/Matrix;)V
    .locals 4
    .param p1    # Lcom/voovio/geometry/Matrix;

    invoke-virtual {p0}, Lcom/voovio/geometry/Matrix;->clone()Lcom/voovio/geometry/Matrix;

    move-result-object v0

    iget v1, p1, Lcom/voovio/geometry/Matrix;->a:F

    iget v2, v0, Lcom/voovio/geometry/Matrix;->a:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/voovio/geometry/Matrix;->c:F

    iget v3, v0, Lcom/voovio/geometry/Matrix;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/voovio/geometry/Matrix;->a:F

    iget v1, p1, Lcom/voovio/geometry/Matrix;->b:F

    iget v2, v0, Lcom/voovio/geometry/Matrix;->a:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/voovio/geometry/Matrix;->d:F

    iget v3, v0, Lcom/voovio/geometry/Matrix;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/voovio/geometry/Matrix;->b:F

    iget v1, p1, Lcom/voovio/geometry/Matrix;->a:F

    iget v2, v0, Lcom/voovio/geometry/Matrix;->c:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/voovio/geometry/Matrix;->c:F

    iget v3, v0, Lcom/voovio/geometry/Matrix;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/voovio/geometry/Matrix;->c:F

    iget v1, p1, Lcom/voovio/geometry/Matrix;->b:F

    iget v2, v0, Lcom/voovio/geometry/Matrix;->c:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/voovio/geometry/Matrix;->d:F

    iget v3, v0, Lcom/voovio/geometry/Matrix;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/voovio/geometry/Matrix;->d:F

    iget v1, p1, Lcom/voovio/geometry/Matrix;->a:F

    iget v2, v0, Lcom/voovio/geometry/Matrix;->tx:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/voovio/geometry/Matrix;->c:F

    iget v3, v0, Lcom/voovio/geometry/Matrix;->ty:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/voovio/geometry/Matrix;->tx:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/voovio/geometry/Matrix;->tx:F

    iget v1, p1, Lcom/voovio/geometry/Matrix;->b:F

    iget v2, v0, Lcom/voovio/geometry/Matrix;->tx:F

    mul-float/2addr v1, v2

    iget v2, p1, Lcom/voovio/geometry/Matrix;->d:F

    iget v3, v0, Lcom/voovio/geometry/Matrix;->ty:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/voovio/geometry/Matrix;->ty:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/voovio/geometry/Matrix;->ty:F

    return-void
.end method

.method public identity()V
    .locals 2

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    iput v1, p0, Lcom/voovio/geometry/Matrix;->a:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->b:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->c:F

    iput v1, p0, Lcom/voovio/geometry/Matrix;->d:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->tx:F

    iput v0, p0, Lcom/voovio/geometry/Matrix;->ty:F

    return-void
.end method

.method public invert()V
    .locals 11

    const/high16 v7, 0x3f800000

    iget v8, p0, Lcom/voovio/geometry/Matrix;->a:F

    iget v9, p0, Lcom/voovio/geometry/Matrix;->d:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/voovio/geometry/Matrix;->b:F

    iget v10, p0, Lcom/voovio/geometry/Matrix;->c:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    div-float v6, v7, v8

    iget v7, p0, Lcom/voovio/geometry/Matrix;->d:F

    mul-float v0, v7, v6

    iget v7, p0, Lcom/voovio/geometry/Matrix;->b:F

    neg-float v7, v7

    mul-float v1, v7, v6

    iget v7, p0, Lcom/voovio/geometry/Matrix;->c:F

    neg-float v7, v7

    mul-float v3, v7, v6

    iget v7, p0, Lcom/voovio/geometry/Matrix;->a:F

    mul-float v4, v7, v6

    iput v0, p0, Lcom/voovio/geometry/Matrix;->a:F

    iput v1, p0, Lcom/voovio/geometry/Matrix;->b:F

    iput v3, p0, Lcom/voovio/geometry/Matrix;->c:F

    iput v4, p0, Lcom/voovio/geometry/Matrix;->d:F

    iget v2, p0, Lcom/voovio/geometry/Matrix;->tx:F

    iget v5, p0, Lcom/voovio/geometry/Matrix;->ty:F

    iget v7, p0, Lcom/voovio/geometry/Matrix;->a:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/voovio/geometry/Matrix;->c:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    neg-float v7, v7

    iput v7, p0, Lcom/voovio/geometry/Matrix;->tx:F

    iget v7, p0, Lcom/voovio/geometry/Matrix;->b:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/voovio/geometry/Matrix;->d:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    neg-float v7, v7

    iput v7, p0, Lcom/voovio/geometry/Matrix;->ty:F

    return-void
.end method

.method public rotate(F)V
    .locals 8
    .param p1    # F

    const/4 v5, 0x0

    new-instance v0, Lcom/voovio/geometry/Matrix;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v4, v6

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/voovio/geometry/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v0}, Lcom/voovio/geometry/Matrix;->concat(Lcom/voovio/geometry/Matrix;)V

    return-void
.end method

.method public scale(FF)V
    .locals 7
    .param p1    # F
    .param p2    # F

    const/4 v2, 0x0

    new-instance v0, Lcom/voovio/geometry/Matrix;

    move v1, p1

    move v3, v2

    move v4, p2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/voovio/geometry/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v0}, Lcom/voovio/geometry/Matrix;->concat(Lcom/voovio/geometry/Matrix;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(a="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/voovio/geometry/Matrix;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/geometry/Matrix;->b:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/geometry/Matrix;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/geometry/Matrix;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/geometry/Matrix;->tx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/voovio/geometry/Matrix;->ty:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformPoint(Lcom/voovio/geometry/Point;)Lcom/voovio/geometry/Point;
    .locals 4
    .param p1    # Lcom/voovio/geometry/Point;

    new-instance v0, Lcom/voovio/geometry/Point;

    invoke-direct {v0}, Lcom/voovio/geometry/Point;-><init>()V

    iget v1, p0, Lcom/voovio/geometry/Matrix;->a:F

    iget v2, p1, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/geometry/Matrix;->c:F

    iget v3, p1, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/geometry/Matrix;->tx:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/geometry/Point;->x:F

    iget v1, p0, Lcom/voovio/geometry/Matrix;->b:F

    iget v2, p1, Lcom/voovio/geometry/Point;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/geometry/Matrix;->d:F

    iget v3, p1, Lcom/voovio/geometry/Point;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/voovio/geometry/Matrix;->ty:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/voovio/geometry/Point;->y:F

    return-object v0
.end method

.method public translate(FF)V
    .locals 7
    .param p1    # F
    .param p2    # F

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    new-instance v0, Lcom/voovio/geometry/Matrix;

    move v3, v2

    move v4, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/voovio/geometry/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v0}, Lcom/voovio/geometry/Matrix;->concat(Lcom/voovio/geometry/Matrix;)V

    return-void
.end method
