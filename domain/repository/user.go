package repository

import (
	"context"

	"github.com/hott0mott0/golang-jwt-sample/domain/model"
)

type UserRepository interface {
	Create(ctx context.Context, user *model.User) (*model.User, error)
	GetByEmail(ctx context.Context, email string) (*model.User, error)
}
